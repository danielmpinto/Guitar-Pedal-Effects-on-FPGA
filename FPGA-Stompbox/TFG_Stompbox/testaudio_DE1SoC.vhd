library ieee;
use ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
use ieee.std_logic_signed.all;

entity testaudio_DE1SoC is 
 port(		CLOCK_50 	:  in  std_logic;
		KEY 		:  in  std_logic_vector(3 downto 0);
		--====AUDIO====--
		AUD_XCK 	:  out std_logic;
		AUD_BCLK 	:  in  std_logic;
		AUD_ADCLRCK 	:  in  std_logic;
		AUD_DACLRCK 	:  in  std_logic;
		AUD_ADCDAT 	:  in  std_logic;
		AUD_DACDAT 	:  out std_logic;
		FPGA_I2C_SCLK 	:  out std_logic;
		FPGA_I2C_SDAT 	:  inout  std_logic;
		--====ADC====--
		SW 		: in  std_logic_vector(9 downto 0); -- canal a visulizar en LEDR
		LEDR 		: out  std_logic_vector(9 downto 0);
		ADC_SCLK  	: out std_logic;
		ADC_CS_N  	: out std_logic;
		ADC_DOUT  	: in  std_logic;
		ADC_DIN	 	: out std_logic;
		--====HEXADECIMAL====--
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6)	);
end testaudio_DE1SoC;




architecture a of testaudio_DE1SoC is 

	component au_setup
	 generic	(
			SAMPLE_RATE	: integer range 1 to 3 );
	 port(	reset 	 : in std_logic;
		clk_50	 : in std_logic;
		mic_lin	 : in std_logic;
		i2c_sdat : inout std_logic;
		i2c_sclk : out std_logic;
		aud_xck	 : out std_logic	);
	end component;

	component au_in
	 port (
			clk, reset : in	std_logic;
			adclrc 	: in	std_logic;
			bclk 	: in	std_logic;
			adcdat 	: in	std_logic;
			sample 	: out	std_logic_vector(15 downto 0);
			ready 	: out	std_logic	);
	end component;

	component au_out
	 port (
			clk, reset : in	std_logic;
			daclrc	: in	std_logic;
			bclk 	: in	std_logic;
			sample 	: in	std_logic_vector(15 downto 0);
			dacdat 	: out	std_logic;
			ready	: out	std_logic	);
	end component;

	
	component AD7928_cyclic is
	 generic	(
		CH_NUMBER 	: natural range 1 to 8 := 8;
		CLK_DIVBIT 	: natural range 1 to 11 := 11;
		SAMPLE_CYCLES 	: natural range 1 to 1000000 := 1	);
	 port (
			reset: in std_logic;
			clk	: in std_logic;
			dout	: in std_logic;
			cs_n	: out std_logic;
			sclk	: out std_logic;
			din	: out std_logic;
			ch0	: out std_logic_vector(11 downto 0);
			ch1	: out std_logic_vector(11 downto 0);
			ch2	: out std_logic_vector(11 downto 0);
			ch3	: out std_logic_vector(11 downto 0);
			ch4	: out std_logic_vector(11 downto 0);
			ch5	: out std_logic_vector(11 downto 0);
			ch6	: out std_logic_vector(11 downto 0);
			ch7	: out std_logic_vector(11 downto 0);
			ready	: out std_logic	);
	end component;

	component booster
	 port (
			sample_in : in	std_logic_vector(15 downto 0);
			multiplier : in	std_logic_vector(15 downto 0);
			sample_out : out std_logic_vector(15 downto 0)
		);
	end component;

	component distortion
	 port (
			sample_in : in	std_logic_vector(15 downto 0);
			dist_pos : in	std_logic_vector(15 downto 0);
			gain : in	std_logic_vector(15 downto 0);
			sample_out : out std_logic_vector(15 downto 0)
		);
	end component;

	component tremolo
	 port (
			sample_in  : in	std_logic_vector(15 downto 0);
			sample_out : out std_logic_vector(15 downto 0);
			LD_Sample  : in std_logic;
			clk 	   : in std_logic;
			cl 	   : in std_logic;
			--Parametros:
			rate 	: in std_logic_vector(15 downto 0); --Velocidad del tremolo
			atack 	: in std_logic_vector(15 downto 0);--Define el corte Brusco o suave?
			wave 	: in std_logic_vector(1 downto 0)  --Forma de la onda. Seno, cuadrada, triangular?
		);
	end component;


	component overdrive
	 port (
			sample_in : in	std_logic_vector(15 downto 0);
			dist_pos : in	std_logic_vector(15 downto 0);
			gain : in	std_logic_vector(15 downto 0);
			sample_out : out std_logic_vector(15 downto 0)
		);
	end component;

	--AUDIO SIGNALS
	signal reset 	  : std_logic;
	signal in_ready   : std_logic;
	signal out_ready  : std_logic;
	signal sample_in  : std_logic_vector(15 downto 0);
	signal sample_od : std_logic_vector(15 downto 0);
	signal sample_dis : std_logic_vector(15 downto 0);
	signal sample_trm : std_logic_vector(15 downto 0);
	signal sample_out : std_logic_vector(15 downto 0);
	--boost/dist
	signal multiplier : std_logic_vector(15 downto 0);
	signal pot_distor : std_logic_vector(15 downto 0);
	--ADC SIGNALS
	signal ready 		:  std_logic;
	signal ch0, ch1, ch2, ch3 	:  std_logic_vector(11 downto 0);
	--TREMOLO FX SIGNALS
	signal velocidad, ataque: std_logic_vector(15 downto 0);
	signal onda	  	: std_logic_vector(1 downto 0);
	signal btn1 : std_logic;
	signal btn2 : std_logic;
	signal btn3 : std_logic;
	signal btn4 : std_logic;
	Signal distortion_value : integer range 0 to 255;
	Signal volume_value : integer range 0 to 255;
	Signal velocidade_value : integer range 0 to 255;
	Signal ataque_value : integer range 0 to 255;
	signal edge_detect : std_logic_vector( 1 downto 0 );
	Signal max_value : integer range 0 to 32;


begin 
	
--	reset <= not(KEY(0));
	reset <= null;
	
	inst1: au_setup
		generic map	(SAMPLE_RATE => 3)
		port map(	reset => reset,
				clk_50 => CLOCK_50,
				mic_lin	=> '0',
				i2c_sdat => FPGA_I2C_SDAT,
				i2c_sclk => FPGA_I2C_SCLK,
				aud_xck => AUD_XCK	);
	
	inst2: au_in
		port map(	reset => reset,
				clk => CLOCK_50,
				adclrc	=> AUD_ADCLRCK,
				bclk => AUD_BCLK,
				adcdat => AUD_ADCDAT,
				sample => sample_in,
				ready => in_ready	);
	
	inst3: au_out
		port map(	reset => reset,
				clk => CLOCK_50,
				daclrc	=> AUD_DACLRCK,
				bclk => AUD_BCLK,
				sample => sample_out,
				dacdat => AUD_DACDAT,
				ready => out_ready	);


	inst4 : AD7928_cyclic
		generic map(
			CH_NUMBER 	=> 3,
			CLK_DIVBIT 	=> 11,
			SAMPLE_CYCLES 	=> 1)
		port map (	reset 	=> reset,
				clk 	=> CLOCK_50,
				dout  	=> ADC_DOUT,
				cs_n  	=> ADC_CS_N,
				sclk 	=> ADC_SCLK,
				din 	=> ADC_DIN,
				ch0  	=> ch0, --Volumen
				ch1  	=> ch1, --Distorsion
				ch2  	=> ch2, --Velocidad
				ch3	=>	ch3, --Ataque
				ready  	=> ready 	);



-------------Varlores potenciometros-------------

--		multiplier<=std_logic_vector(resize(signed('0' & ch0(11 downto 4) & "000"),16));


		multiplier<=std_logic_vector(resize(signed('0' & to_unsigned(volume_value, 12) & "11111"),16));
--		multiplier<=std_logic_vector(to_unsigned(distortion_value,16));
		pot_distor<=std_logic_vector(resize(signed('0' & to_unsigned(distortion_value, 12)),16));
		velocidad <= std_logic_vector(resize(signed('0' & to_unsigned(velocidade_value, 12)), 16));
		ataque <= std_logic_vector(resize(signed('0' & to_unsigned(ataque_value, 12)), 16));

-------------DISTOR-------------
		
		
		-- botao volume
		btn1 <= KEY(3);
		aumenta_volume: process (btn1) 
		begin
			
			if (not btn1 = '1') then
				while (not btn1 = '1') loop 
				end loop;
				if volume_value = 250 then
					volume_value <= 0;
				else
					volume_value <= volume_value + 25;
				end if;  
			end if;
		end process aumenta_volume;
		
		-- botao da distorcao
		btn2 <= KEY(2);
		aumenta_distorcao: process (btn2) 
		begin
			
			if (not btn2 = '1') then
				while (not btn2 = '1') loop 
				end loop;
				if distortion_value = 250 then
					distortion_value <= 0;
				else
					distortion_value <= distortion_value + 25;
				end if;  
			end if;
		end process aumenta_distorcao;
		
		-- botao da velocidade
		btn3 <= KEY(1);
		aumenta_velocidade: process (btn3) 
		begin
			
			if (not btn3 = '1') then
				while (not btn3 = '1') loop 
				end loop;
				if velocidade_value = 250 then
					velocidade_value <= 0;
				else
					velocidade_value <= velocidade_value + 25;
				end if;  
			end if;
		end process aumenta_velocidade;
		
		-- botao da ataque
		btn4 <= KEY(0);
		aumenta_ataque: process (btn4) 
		begin
			
			if (not btn4 = '1') then
				while (not btn4 = '1') loop 
				end loop;
				if ataque_value = 250 then
					ataque_value <= 0;
				else
					ataque_value <= ataque_value + 25;
				end if;  
			end if;
		end process aumenta_ataque;
		
		
		
		mostra_display: process (volume_value, distortion_value, velocidade_value, ataque_value)
		begin
		case volume_value is
			 when 0 => LEDR <= "0000000000";  -- '0'
			 when 25 => LEDR <="0000000001";  -- '1'
			 when 50 => LEDR <="0000000011";  -- '2'
			 when 75 => LEDR <="0000000111";  -- '3'
			 when 100 => LEDR <="0000001111";  -- '4'
			 when 125 => LEDR <="0000011111";  -- '5'
			 when 150 => LEDR <="0000111111";  -- '6'
			 when 175 => LEDR <="0001111111";  -- '7'
			 when 200 => LEDR <="0011111111";  -- '8'
			 when 225 => LEDR <="0111111111";  -- '9'
			 when 250 => LEDR <="1111111111";  -- '10'
			 when others=> null;
		end case;
		
		
		
		case distortion_value is
			 when 0 => HEX4 <="0000001"; HEX5<="0000001";  -- '0'
			 when 25 => HEX4 <="1001111";HEX5<="0000001";  -- '1'
			 when 50=> HEX4 <="0010010";HEX5<="0000001";  -- '2'
			 when 75=> HEX4 <="0000110";HEX5<="0000001";  -- '3'
			 when 100=> HEX4 <="1001100";HEX5<="0000001";  -- '4'
			 when 125=> HEX4 <="0100100";HEX5<="0000001";  -- '5'
			 when 150=> HEX4 <="0100000";HEX5<="0000001";  -- '6'
			 when 175=> HEX4 <="0001111";HEX5<="0000001";  -- '7'
			 when 200=> HEX4 <="0000000";HEX5<="0000001";  -- '8'
			 when 225=> HEX4 <="0000100";HEX5<="0000001";  -- '9'
			 when 250=> HEX5 <="1001111" ; HEX4 <="0000001";  -- '10'
		 --nothing is displayed when a number more than 9 is given as input.
			 when others=> null;
		end case;
		
		case velocidade_value is
			 when 0 => HEX2 <="0000001"; HEX3<="0000001";  -- '0'
			 when 25 => HEX2 <="1001111";HEX3<="0000001";  -- '1'
			 when 50=> HEX2 <="0010010";HEX3<="0000001";  -- '2'
			 when 75=> HEX2 <="0000110";HEX3<="0000001";  -- '3'
			 when 100=> HEX2 <="1001100";HEX3<="0000001";  -- '4'
			 when 125=> HEX2 <="0100100";HEX3<="0000001";  -- '5'
			 when 150=> HEX2 <="0100000";HEX3<="0000001";  -- '6'
			 when 175=> HEX2 <="0001111";HEX3<="0000001";  -- '7'
			 when 200=> HEX2 <="0000000";HEX3<="0000001";  -- '8'
			 when 225=> HEX2 <="0000100";HEX3<="0000001";  -- '9'
			 when 250=> HEX3 <="1001111" ; HEX2 <="0000001";  -- '10'
		 --nothing is displayed when a number more than 9 is given as input.
			 when others=> null;
		end case;
		
		case ataque_value is
			 when 0 => HEX0 <="0000001"; HEX1<="0000001";  -- '0'
			 when 25 => HEX0 <="1001111";HEX1<="0000001";  -- '1'
			 when 50=> HEX0 <="0010010";HEX1<="0000001";  -- '2'
			 when 75=> HEX0 <="0000110";HEX1<="0000001";  -- '3'
			 when 100=> HEX0 <="1001100";HEX1<="0000001";  -- '4'
			 when 125=> HEX0 <="0100100";HEX1<="0000001";  -- '5'
			 when 150=> HEX0 <="0100000";HEX1<="0000001";  -- '6'
			 when 175=> HEX0 <="0001111";HEX1<="0000001";  -- '7'
			 when 200=> HEX0 <="0000000";HEX1<="0000001";  -- '8'
			 when 225=> HEX0 <="0000100";HEX1<="0000001";  -- '9'
			 when 250=> HEX1 <="1001111" ; HEX0 <="0000001";  -- '10'
		 --nothing is displayed when a number more than 9 is given as input.
			 when others=> null;
		end case;
		
		end process mostra_display;
--		
		
--		LEDR <= SW(9 downto 0);
		--Texto: Dist
--		HEX5<="0000001";
--		HEX4<="1111001";
--		HEX3<="0100100";
--		HEX2<="1110000";
--		HEX1<="1111111";
--		HEX0<="1111111";
--		multiplier<=std_logic_vector(resize('0' & to_unsigned(distortion_value,1023) & "00000");
--		multiplier<=std_logic_vector(resize(signed('0' & to_unsigned(volume_value, 12) & "000"),16));
--		pot_distor<=std_logic_vector(resize(signed('0' & to_unsigned(distortion_value, 12) & "000"),16));
		inst5 : distortion
		port map (	
				sample_in => sample_in,
				gain => multiplier,
				dist_pos => pot_distor,
				sample_out => sample_out 	
		);


END a;
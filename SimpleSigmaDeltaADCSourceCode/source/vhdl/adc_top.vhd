-- //   ==================================================================
-- //   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
-- //   ------------------------------------------------------------------
-- //   Copyright (c) 2014 by Lattice Semiconductor Corporation
-- //   ALL RIGHTS RESERVED 
-- //   ------------------------------------------------------------------
-- //
-- //   Permission:
-- //
-- //      Lattice SG Pte. Ltd. grants permission to use this code
-- //      pursuant to the terms of the Lattice Reference Design License Agreement. 
-- //
-- //
-- //   Disclaimer:
-- //
-- //      This VHDL or Verilog source code is intended as a design reference
-- //      which illustrates how these types of functions can be implemented.
-- //      It is the user's responsibility to verify their design for
-- //      consistency and functionality through the use of formal
-- //      verification methods.  Lattice provides no warranty
-- //      regarding the use or functionality of this code.
-- //
-- //   --------------------------------------------------------------------
-- //
-- //                  Lattice SG Pte. Ltd.
-- //                  101 Thomson Road, United Square #07-02 
-- //                  Singapore 307591
-- //
-- //
-- //                  TEL: 1-800-Lattice (USA and Canada)
-- //                       +65-6631-2000 (Singapore)
-- //                       +1-503-268-8001 (other locations)
-- //
-- //                  web: http://www.latticesemi.com/
-- //                  email: techsupport@latticesemi.com
-- //
-- //   ---------------------------------------------------------------------- 
--
--  Project:     Simple Sigma Delta ADC
--  File:        adc_top.vhd
--  Title:       ADC Top Level
--  Description: Top level of Analog to Digital Convertor
--
-- --------------------------------------------------------------------
--
-- --------------------------------------------------------------------
-- Code Revision History :
-- --------------------------------------------------------------------
-- Ver: | Author |Mod. Date |Changes Made:
-- V1.0 | S.H.   |12/11/09  |Ported from Verilog
-- --------------------------------------------------------------------



--*********************************************************************
--
--	ADC Top Level Module
--
--*********************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



ENTITY ADC_top IS
--    GENERIC(
--        ADC_WIDTH       : integer := 8;     -- ADC Convertor Bit Precision
--        ACCUM_BITS      : integer := 10;    -- 2^ACCUM_BITS is decimation rate of accumulator
--        LPF_DEPTH_BITS  : integer := 3;     -- 2^LPF_DEPTH_BITS is decimation rate of averager
--        INPUT_TOPOLOGY  : integer := 1      -- 0: DIRECT: Analog input directly connected to + input of comparitor
--                                            -- 1: NETWORK:Analog input connected through R divider to - input of comp.
--    );

    PORT(
--input ports
		clk_in      : IN std_logic;				-- 62.5Mhz on Control Demo board
		rstn        : IN std_logic;	 
		analog_cmp  : IN std_logic;			-- from LVDS buffer or external comparitor

--output ports
        analog_out  : OUT std_logic;         -- feedback to RC network
        sample_rdy  : OUT std_logic;
        digital_out : OUT std_logic_vector(7 downto 0)   -- connected to LED field on control demo bd.
    );
 
END ADC_top;


--**********************************************************************
--**********************************************************************
--
--	ARCHITECTURE 
--
--**********************************************************************
--**********************************************************************
ARCHITECTURE translated OF ADC_top IS

--**********************************************************************
--
--	Component Declarations
--
--**********************************************************************
component sigmadelta_adc
    GENERIC (
	    ADC_WIDTH       : integer;
	    ACCUM_BITS      : integer;
	    LPF_DEPTH_BITS  : integer
    );
    PORT (
    	clk             : IN  std_logic;
    	rstn            : IN  std_logic;
    	analog_cmp      : IN  std_logic;
    	digital_out     : OUT std_logic_vector(ADC_WIDTH-1 downto 0);
    	analog_out      : OUT std_logic;
    	sample_rdy      : OUT std_logic
    );
end component;
--**********************************************************************
--
--	Internal Signals
--
--**********************************************************************
constant    ADC_WIDTH       : integer := 8;     -- ADC Convertor Bit Precision
constant    ACCUM_BITS      : integer := 10;    -- 2^ACCUM_BITS is decimation rate of accumulator
constant    LPF_DEPTH_BITS  : integer := 3;     -- 2^LPF_DEPTH_BITS is decimation rate of averager
constant    INPUT_TOPOLOGY  : integer := 1;     -- 0: DIRECT: Analog input directly connected to + input of comparitor
                                                -- 1: NETWORK:Analog input connected through R divider to - input of comp.

signal      clk             : std_logic;
signal      analog_out_i    : std_logic;
signal      sample_rdy_i    : std_logic;
signal      digital_out_i   : std_logic_vector(ADC_WIDTH-1 downto 0);
signal      digital_out_abs : std_logic_vector(ADC_WIDTH-1 downto 0);


BEGIN

    clk <= clk_in;


SSD_ADC: sigmadelta_adc
    GENERIC MAP(
    	ADC_WIDTH       => ADC_WIDTH,
    	ACCUM_BITS      => ACCUM_BITS,
    	LPF_DEPTH_BITS  => LPF_DEPTH_BITS
    )
    PORT MAP(
    	clk             => clk,
    	rstn            => rstn,
    	analog_cmp      => analog_cmp,
    	digital_out     => digital_out_i,
    	analog_out      => analog_out_i,
    	sample_rdy      => sample_rdy_i
	);

    digital_out_abs <= not digital_out_i when (INPUT_TOPOLOGY = 1) else digital_out_i;

--***********************************************************************
--
--  output assignments
--
--***********************************************************************

    digital_out   <= not digital_out_abs;	 -- invert bits for LED display 
    analog_out    <=  analog_out_i;
    sample_rdy    <=  sample_rdy_i;

END translated;

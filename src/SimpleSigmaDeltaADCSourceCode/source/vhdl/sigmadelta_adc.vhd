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
--  File:        sigmadelta_adc.vhd
--  Title:       SSD 
--  Description: SSD Module
--
-- --------------------------------------------------------------------
--
-- --------------------------------------------------------------------
-- Code Revision History :
-- --------------------------------------------------------------------
-- Ver: | Author |Mod. Date |Changes Made:
-- V1.0 | S.H.   |12/14/09  |Ported from Verilog
-- --------------------------------------------------------------------



--*********************************************************************
--
--	SSD Top Level Module
--
--*********************************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;



ENTITY sigmadelta_adc IS
    GENERIC(
        ADC_WIDTH       : integer := 8;     -- ADC Convertor Bit Precision
        ACCUM_BITS      : integer := 10;    -- 2^ACCUM_BITS is decimation rate of accumulator
        LPF_DEPTH_BITS  : integer := 3      -- 2^LPF_DEPTH_BITS is decimation rate of averager
    );

    PORT(
--input ports
    	clk             : IN std_logic;     -- sample rate clock
    	rstn            : IN std_logic;     -- async reset, asserted low
    	analog_cmp      : IN std_logic;     -- input from LVDS buffer (comparitor)

--output ports
        digital_out     : OUT std_logic_vector(ADC_WIDTH-1 downto 0);  -- digital output word of ADC
    	analog_out      : OUT std_logic;                        -- feedback to comparitor input RC circuit
        sample_rdy      : OUT std_logic                         -- digital_out is ready
    );

END sigmadelta_adc;

--**********************************************************************
--**********************************************************************
--
--	ARCHITECTURE 
--
--**********************************************************************
--**********************************************************************
ARCHITECTURE translated OF sigmadelta_adc IS

--**********************************************************************
--
--	Component Declarations
--
--**********************************************************************
component box_ave
    GENERIC(
        ADC_WIDTH       : integer; 
        LPF_DEPTH_BITS  : integer
    );
    PORT(
        clk             : IN std_logic;
        rstn            : IN std_logic;
        sample          : IN std_logic;
        raw_data_in     : IN std_logic_vector(ADC_WIDTH-1 downto 0);
        ave_data_out    : OUT std_logic_vector(ADC_WIDTH-1 downto 0);
        data_out_valid  : OUT std_logic
    );
end component;
--**********************************************************************
--
--	Internal Signals
--
--**********************************************************************
constant    SATURATED   : std_logic_vector(ACCUM_BITS-1 downto 0) := (others => '1'); -- to compare sigma & counter

signal      delta       : std_logic;        -- captured comparitor output
signal      sigma       : std_logic_vector(ACCUM_BITS-1 downto 0); -- running accumulator value
signal      accum       : std_logic_vector(ADC_WIDTH-1 downto 0);  -- latched accumulator value
signal      counter     : std_logic_vector(ACCUM_BITS-1 downto 0); -- decimation counter for accumulator
signal      rollover    : std_logic;        -- decimation counter terminal count
signal      accum_rdy   : std_logic;        -- latched accumulator value 'ready' 

BEGIN


--***********************************************************************
--
--  SSD 'Analog' Input - PWM
--
--	External Comparator Generates High/Low Value
--
--***********************************************************************

PROCESS (clk)
begin
    if (clk'event and clk='1') then
        delta <= analog_cmp;        -- capture comparitor output
    end if;
end process;   


--***********************************************************************
--
--  Accumulator Stage
--
--	Adds PWM positive pulses over accumulator period
--
--***********************************************************************

PROCESS (clk, rstn)
begin
    if (rstn ='0') then
		sigma       <= (others => '0');
		accum       <= (others => '0');
		accum_rdy   <= '0';
    elsif (clk'event and clk='1') then
        if (rollover = '1') then
            -- latch top ADC_WIDTH bits of sigma accumulator (drop LSBs)
            accum <= sigma(ACCUM_BITS-1 downto ACCUM_BITS-ADC_WIDTH);
                sigma(ACCUM_BITS-1 downto 1) <= (others => '0');
                sigma(0) <= delta;
        else 
            if (sigma /= SATURATED) then    -- if not saturated
                sigma <= sigma + delta;     -- accumulate 
            end if;
        end if;
        accum_rdy <= rollover;     -- latch 'rdy' (to align with accum)
    end if;
end process;




--***********************************************************************
--
--  Box filter Average
--
--	Acts as simple decimating Low-Pass Filter
--
--***********************************************************************

BA_INST: box_ave 
    GENERIC MAP(
    	ADC_WIDTH       => ADC_WIDTH,
    	LPF_DEPTH_BITS  => LPF_DEPTH_BITS
    )
    PORT MAP(
        clk             => clk,
        rstn            => rstn,
        sample          => accum_rdy,
        raw_data_in     => accum,
        ave_data_out    => digital_out,
        data_out_valid  => sample_rdy
    );


--************************************************************************
--
-- Sample Control - Accumulator Timing
--	
--************************************************************************

PROCESS (clk, rstn)
begin
    if (rstn ='0') then
		counter    <= (others => '0');
		rollover   <= '0';
    elsif (clk'event and clk='1') then
		counter <= counter + '1';     -- running count
        if (counter = SATURATED) then
    		rollover <= '1';         -- assert 'rollover' when counter is all 1's
        else
    		rollover <= '0';
        end if;
	end if;
end process;



--***********************************************************************
--
--  output assignments
--
--***********************************************************************

    analog_out <= delta;            -- feedback to comparitor LPF

END translated;

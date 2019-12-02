// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2014 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
// Permission:
//
//   Lattice Semiconductor grants permission to use this code for use
//   in synthesis for any Lattice programmable logic product.  Other
//   use of this code, including the selling or duplication of any
//   portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Lattice Semiconductor provides no warranty
//   regarding the use or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A
//
//                     TEL: 1-800-Lattice (USA and Canada)
//                          503-268-8001 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
//
//  Project:           USB 3.1 Type-C Charger Solution Core Design
//  File:              adc_top.v
//  Title:             adc_top
//  Description:       Top level of Analog to Digital Convertor
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Ver: | Author   	  | Mod. Date  | Changes Made:
// V1.0 | Vijay S     | 2016-05-11 | Initial Release
// --------------------------------------------------------------------

//*********************************************************************
//
//	ADC Top Level Module
//
//*********************************************************************



module ADC_top (    
		    i_clk_in, //comment out to use internal clock
		    i_rst_in,
		    i_analog_cmp,
		    o_digital_out,
		    o_analog_out,
		    o_sample_rdy
		    
		    );
   
   
    
    parameter 
     ADC_WIDTH = 8,              // ADC Convertor Bit Precision
     ACCUM_BITS = 10,            // 2^ACCUM_BITS is decimation rate of accumulator
     LPF_DEPTH_BITS = 3,         // 2^LPF_DEPTH_BITS is decimation rate of averager
     INPUT_TOPOLOGY = 0;         // 0: DIRECT: Analog input directly connected to + input of comparator
   // 1: NETWORK:Analog input connected through R divider to - input of comp.
   
   //input ports
   input	i_clk_in; // 3.33Mhz on Control Demo board
   input 	i_rst_in;				
   input	i_analog_cmp;			// from LVDS buffer or external comparitor
   
   //output ports
   output	o_analog_out;         // feedback to RC network
   output 	o_sample_rdy;
   output [ADC_WIDTH-1:0] o_digital_out;   // connected to I2C register. 
   
   //For Internal RESET
   //   reg 			  rst_i=0;
   //   reg [13:0] 		  rst_count_i = 14'h0;
   
   
   //test point
   //output wire 		  o_tp_analog_o;
   //output wire 		  o_tp_comp;
   //output wire 		  o_tp_clk;
   
   //    assign o_tp_analog_o= o_analog_out;
   //    assign o_tp_comp = i_analog_cmp;
   //    assign o_tp_clk = i_clk_in;
   
   //**********************************************************************
   //
   //	Internal Wire & Reg Signals
   //
   //**********************************************************************
   wire 		  clk;
   wire 		  analog_out_i;
   wire 		  sample_rdy_i;
   wire [ADC_WIDTH-1:0]   digital_out_i;
   wire [ADC_WIDTH-1:0]   digital_out_abs;
   
   
/*   
   // internal rst
   always @(posedge i_clk_in) begin
      if(rst_count_i[12:11] != 2'b10)
        rst_count_i <= rst_count_i+1;
   end
   
   always @(posedge i_clk_in) begin
      rst_i <= ((rst_count_i < 14'h800)) ? 1'b0 : 1'b1;
   end
*/

/*
   //***********************
   //Internal Clock
   //***********************
   HSOSC
   #(
	 .CLKHF_DIV ("0b11")
   ) OSCInst (
     .CLKHFPU (1'b1),  // I
     .CLKHFEN (1'b1),  // I
     .CLKHF   (i_clk_in)   // O
   );
*/
   assign rst_i = i_rst_in;
   assign clk = i_clk_in;
  
   
   //***********************************************************************
   //
   //  SSD ADC using onboard LVDS buffer or external comparator
   //
   //***********************************************************************
   sigmadelta_adc #(
		    .ADC_WIDTH(ADC_WIDTH),
		    .ACCUM_BITS(ACCUM_BITS),
		    .LPF_DEPTH_BITS(LPF_DEPTH_BITS)
		    )
   SSD_ADC(
	   .clk(clk),
	   .rstn(rst_i),
	   .analog_cmp(i_analog_cmp),
	   .digital_out(digital_out_i),
	   .analog_out(analog_out_i),
	   .sample_rdy(sample_rdy_i)
	   );
   
   assign digital_out_abs = INPUT_TOPOLOGY ? ~digital_out_i : digital_out_i;  
   
   //***********************************************************************
   //
   //  output assignments
   //
   //***********************************************************************
   
   
   assign o_digital_out   =  digital_out_abs;	 
   assign o_analog_out    =  analog_out_i;
   assign o_sample_rdy    =  sample_rdy_i;
   
endmodule

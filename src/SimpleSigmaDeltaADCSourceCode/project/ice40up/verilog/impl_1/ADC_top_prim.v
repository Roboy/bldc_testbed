// Verilog netlist produced by program LSE :  version Radiant (64-bit) 1.0.0.350.6
// Netlist written on Mon Sep 24 15:02:28 2018
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "c:/lscc/radiant/1.0/ip/pmi/pmi.v"
// file 1 "c:/lscc/radiant/1.0/ip/pmi/pmi.vhd"
// file 2 "d:/radiant_porting/adc_deltasigma/simplesigmadeltaadcsourcecode/source/verilog/radiant/adc_top.v"
// file 3 "d:/radiant_porting/adc_deltasigma/simplesigmadeltaadcsourcecode/source/verilog/radiant/box_ave.v"
// file 4 "d:/radiant_porting/adc_deltasigma/simplesigmadeltaadcsourcecode/source/verilog/radiant/sigmadelta_adc_ice40.v"
// file 5 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ccu2_b.v"
// file 6 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3bz.v"
// file 7 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3dz.v"
// file 8 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3iz.v"
// file 9 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3jz.v"
// file 10 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc.v"
// file 11 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc1p8v.v"
// file 12 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ib.v"
// file 13 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ifd1p3az.v"
// file 14 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc.v"
// file 15 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc1p8v.v"
// file 16 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ob.v"
// file 17 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/obz_b.v"
// file 18 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ofd1p3az.v"
// file 19 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/pdp4k.v"
// file 20 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb.v"
// file 21 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb1p8v.v"
// file 22 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/sp256k.v"
// file 23 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/legacy.v"
// file 24 "c:/lscc/radiant/1.0/ip/common/adder/rtl/lscc_adder.v"
// file 25 "c:/lscc/radiant/1.0/ip/common/complex_mult/rtl/lscc_complex_mult.v"
// file 26 "c:/lscc/radiant/1.0/ip/common/mult_accumulate/rtl/lscc_mult_accumulate.v"
// file 27 "c:/lscc/radiant/1.0/ip/common/mult_add_sub/rtl/lscc_mult_add_sub.v"
// file 28 "c:/lscc/radiant/1.0/ip/common/multiplier/rtl/lscc_multiplier.v"
// file 29 "c:/lscc/radiant/1.0/ip/common/ram_dp/rtl/lscc_ram_dp.v"
// file 30 "c:/lscc/radiant/1.0/ip/common/ram_dq/rtl/lscc_ram_dq.v"
// file 31 "c:/lscc/radiant/1.0/ip/common/subtractor/rtl/lscc_subtractor.v"
// file 32 "c:/lscc/radiant/1.0/ip/pmi/pmi_add.v"
// file 33 "c:/lscc/radiant/1.0/ip/pmi/pmi_complex_mult.v"
// file 34 "c:/lscc/radiant/1.0/ip/pmi/pmi_dsp.v"
// file 35 "c:/lscc/radiant/1.0/ip/pmi/pmi_mac.v"
// file 36 "c:/lscc/radiant/1.0/ip/pmi/pmi_mult.v"
// file 37 "c:/lscc/radiant/1.0/ip/pmi/pmi_multaddsub.v"
// file 38 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dp.v"
// file 39 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dq.v"
// file 40 "c:/lscc/radiant/1.0/ip/pmi/pmi_sub.v"

//
// Verilog Description of module ADC_top
//

module ADC_top (i_clk_in, i_rst_in, i_analog_cmp, o_digital_out, o_analog_out, 
            o_sample_rdy);   /* synthesis lineinfo="@2(58[8],58[15])"*/
    input i_clk_in;   /* synthesis lineinfo="@2(78[10],78[18])"*/
    input i_rst_in;   /* synthesis lineinfo="@2(79[11],79[19])"*/
    input i_analog_cmp;   /* synthesis lineinfo="@2(80[10],80[22])"*/
    output [7:0]o_digital_out;   /* synthesis lineinfo="@2(85[27],85[40])"*/
    output o_analog_out;   /* synthesis lineinfo="@2(83[11],83[23])"*/
    output o_sample_rdy;   /* synthesis lineinfo="@2(84[12],84[24])"*/
    
    wire i_clk_in_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@2(78[10],78[18])"*/
    
    wire i_rst_in_c, i_analog_cmp_c, o_analog_out_c, o_sample_rdy_c, 
        o_digital_out_c_7, o_digital_out_c_6, o_digital_out_c_5, o_digital_out_c_4, 
        o_digital_out_c_3, o_digital_out_c_2, o_digital_out_c_1, o_digital_out_c_0, 
        VCC_net;
    wire [9:0]sigma;   /* synthesis lineinfo="@4(95[26],95[31])"*/
    wire [7:0]accum;   /* synthesis lineinfo="@4(96[29],96[34])"*/
    
    wire rollover, n137, n136, n135, n134, n133, n132, n131, 
        n130, GND_net;
    
    VHI i5 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    OB \o_digital_out_pad[5]  (.I(o_digital_out_c_5), .O(o_digital_out[5]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB \o_digital_out_pad[4]  (.I(o_digital_out_c_4), .O(o_digital_out[4]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB \o_digital_out_pad[6]  (.I(o_digital_out_c_6), .O(o_digital_out[6]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB \o_digital_out_pad[7]  (.I(o_digital_out_c_7), .O(o_digital_out[7]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB \o_digital_out_pad[3]  (.I(o_digital_out_c_3), .O(o_digital_out[3]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB \o_digital_out_pad[2]  (.I(o_digital_out_c_2), .O(o_digital_out[2]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB \o_digital_out_pad[1]  (.I(o_digital_out_c_1), .O(o_digital_out[1]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB \o_digital_out_pad[0]  (.I(o_digital_out_c_0), .O(o_digital_out[0]));   /* synthesis lineinfo="@2(85[27],85[40])"*/
    OB o_analog_out_pad (.I(o_analog_out_c), .O(o_analog_out));   /* synthesis lineinfo="@2(83[11],83[23])"*/
    OB o_sample_rdy_pad (.I(o_sample_rdy_c), .O(o_sample_rdy));   /* synthesis lineinfo="@2(84[12],84[24])"*/
    IB i_clk_in_pad (.I(i_clk_in), .O(i_clk_in_c));   /* synthesis lineinfo="@2(78[10],78[18])"*/
    IB i_rst_in_pad (.I(i_rst_in), .O(i_rst_in_c));   /* synthesis lineinfo="@2(79[11],79[19])"*/
    IB i_analog_cmp_pad (.I(i_analog_cmp), .O(i_analog_cmp_c));   /* synthesis lineinfo="@2(80[10],80[22])"*/
    LUT4 i83_3_lut (.A(accum[0]), .B(sigma[2]), .C(rollover), .Z(n130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i83_3_lut.INIT = "0xcaca";
    LUT4 i84_3_lut (.A(accum[7]), .B(sigma[9]), .C(rollover), .Z(n131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i84_3_lut.INIT = "0xcaca";
    LUT4 i85_3_lut (.A(accum[6]), .B(sigma[8]), .C(rollover), .Z(n132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i85_3_lut.INIT = "0xcaca";
    LUT4 i86_3_lut (.A(accum[5]), .B(sigma[7]), .C(rollover), .Z(n133)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i86_3_lut.INIT = "0xcaca";
    LUT4 i87_3_lut (.A(accum[4]), .B(sigma[6]), .C(rollover), .Z(n134)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i87_3_lut.INIT = "0xcaca";
    LUT4 i88_3_lut (.A(accum[3]), .B(sigma[5]), .C(rollover), .Z(n135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i88_3_lut.INIT = "0xcaca";
    LUT4 i89_3_lut (.A(accum[2]), .B(sigma[4]), .C(rollover), .Z(n136)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i89_3_lut.INIT = "0xcaca";
    LUT4 i90_3_lut (.A(accum[1]), .B(sigma[3]), .C(rollover), .Z(n137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i90_3_lut.INIT = "0xcaca";
    sigmadelta_adc SSD_ADC (.i_clk_in_c(i_clk_in_c), .rollover(rollover), 
            .VCC_net(VCC_net), .i_analog_cmp_c(i_analog_cmp_c), .o_analog_out_c(o_analog_out_c), 
            .n137(n137), .accum({accum}), .GND_net(GND_net), .\sigma[5] (sigma[5]), 
            .\sigma[6] (sigma[6]), .\sigma[9] (sigma[9]), .n136(n136), 
            .\sigma[3] (sigma[3]), .\sigma[4] (sigma[4]), .\sigma[7] (sigma[7]), 
            .\sigma[8] (sigma[8]), .\sigma[2] (sigma[2]), .n135(n135), 
            .n134(n134), .n133(n133), .n132(n132), .n131(n131), .n130(n130), 
            .i_rst_in_c(i_rst_in_c), .o_digital_out_c_7(o_digital_out_c_7), 
            .o_sample_rdy_c(o_sample_rdy_c), .o_digital_out_c_6(o_digital_out_c_6), 
            .o_digital_out_c_5(o_digital_out_c_5), .o_digital_out_c_4(o_digital_out_c_4), 
            .o_digital_out_c_3(o_digital_out_c_3), .o_digital_out_c_2(o_digital_out_c_2), 
            .o_digital_out_c_1(o_digital_out_c_1), .o_digital_out_c_0(o_digital_out_c_0));   /* synthesis lineinfo="@2(152[4],159[6])"*/
    
endmodule

//
// Verilog Description of module sigmadelta_adc
//

module sigmadelta_adc (i_clk_in_c, rollover, VCC_net, i_analog_cmp_c, 
            o_analog_out_c, n137, accum, GND_net, \sigma[5] , \sigma[6] , 
            \sigma[9] , n136, \sigma[3] , \sigma[4] , \sigma[7] , 
            \sigma[8] , \sigma[2] , n135, n134, n133, n132, n131, 
            n130, i_rst_in_c, o_digital_out_c_7, o_sample_rdy_c, o_digital_out_c_6, 
            o_digital_out_c_5, o_digital_out_c_4, o_digital_out_c_3, o_digital_out_c_2, 
            o_digital_out_c_1, o_digital_out_c_0);
    input i_clk_in_c;
    output rollover;
    input VCC_net;
    input i_analog_cmp_c;
    output o_analog_out_c;
    input n137;
    output [7:0]accum;
    input GND_net;
    output \sigma[5] ;
    output \sigma[6] ;
    output \sigma[9] ;
    input n136;
    output \sigma[3] ;
    output \sigma[4] ;
    output \sigma[7] ;
    output \sigma[8] ;
    output \sigma[2] ;
    input n135;
    input n134;
    input n133;
    input n132;
    input n131;
    input n130;
    input i_rst_in_c;
    output o_digital_out_c_7;
    output o_sample_rdy_c;
    output o_digital_out_c_6;
    output o_digital_out_c_5;
    output o_digital_out_c_4;
    output o_digital_out_c_3;
    output o_digital_out_c_2;
    output o_digital_out_c_1;
    output o_digital_out_c_0;
    
    wire i_clk_in_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@2(78[10],78[18])"*/
    wire [9:0]sigma_9__N_1;
    
    wire n113;
    wire [9:0]sigma;   /* synthesis lineinfo="@4(95[26],95[31])"*/
    
    wire rstn_N_51, accum_rdy, n542;
    wire [9:0]n57;
    
    wire n122;
    wire [9:0]n1;
    wire [9:0]counter;   /* synthesis lineinfo="@4(97[26],97[33])"*/
    
    wire n118, n120, n213, n657, n211, n639, n209, n618, n207, 
        n615, n205, n612, n609, n186, n648, n188, n112, n184, 
        n645, n606, n182;
    wire [9:0]sigma_9__N_31;
    
    wire n651, n190, n116, n654, n642, n114, n124, n126, n128, 
        n17, n16, n17_adj_93, n15, n16_adj_94, VCC_net_c;
    
    FD1P3XZ accum_rdy_23 (.D(rollover), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_rdy));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_rdy_23.REGSET = "RESET";
    defparam accum_rdy_23.SRMODE = "ASYNC";
    FD1P3XZ rollover_25 (.D(n542), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(rollover));   /* synthesis lineinfo="@4(203[7],206[6])"*/
    defparam rollover_25.REGSET = "RESET";
    defparam rollover_25.SRMODE = "ASYNC";
    FD1P3XZ counter_30__i6 (.D(n1[6]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[6]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i6.REGSET = "RESET";
    defparam counter_30__i6.SRMODE = "ASYNC";
    IOL_B DDRInst0 (.PADDI(i_analog_cmp_c), .CE(VCC_net), .INCLK(i_clk_in_c), 
          .DI0(o_analog_out_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=41, LSE_LCOL=4, LSE_RCOL=6, LSE_LLINE=152, LSE_RLINE=159 */ ;   /* synthesis lineinfo="@2(152[4],159[6])"*/
    defparam DDRInst0.LATCHIN = "NONE_DDR";
    defparam DDRInst0.DDROUT = "NO";
    LUT4 i109_2_lut (.A(n57[4]), .B(rollover), .Z(n122)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i109_2_lut.INIT = "0x2222";
    FD1P3XZ counter_30__i5 (.D(n1[5]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[5]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i5.REGSET = "RESET";
    defparam counter_30__i5.SRMODE = "ASYNC";
    LUT4 i107_2_lut (.A(n57[6]), .B(rollover), .Z(n118)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i107_2_lut.INIT = "0x2222";
    FD1P3XZ counter_30__i4 (.D(n1[4]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[4]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i4.REGSET = "RESET";
    defparam counter_30__i4.SRMODE = "ASYNC";
    FD1P3XZ counter_30__i3 (.D(n1[3]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[3]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i3.REGSET = "RESET";
    defparam counter_30__i3.SRMODE = "ASYNC";
    FD1P3XZ accum_i0_i1 (.D(n137), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[1]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i1.REGSET = "RESET";
    defparam accum_i0_i1.SRMODE = "ASYNC";
    LUT4 i108_2_lut (.A(n57[5]), .B(rollover), .Z(n120)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i108_2_lut.INIT = "0x2222";
    FD1P3XZ counter_30__i2 (.D(n1[2]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[2]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i2.REGSET = "RESET";
    defparam counter_30__i2.SRMODE = "ASYNC";
    FD1P3XZ counter_30__i1 (.D(n1[1]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[1]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i1.REGSET = "RESET";
    defparam counter_30__i1.SRMODE = "ASYNC";
    FD1P3XZ counter_30__i0 (.D(n1[0]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[0]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i0.REGSET = "RESET";
    defparam counter_30__i0.SRMODE = "ASYNC";
    FD1P3XZ counter_30__i7 (.D(n1[7]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[7]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i7.REGSET = "RESET";
    defparam counter_30__i7.SRMODE = "ASYNC";
    FA2 counter_30_add_4_11 (.A0(GND_net), .B0(GND_net), .C0(counter[9]), 
        .D0(n213), .CI0(n213), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n657), .CI1(n657), .CO0(n657), .S0(n1[9]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30_add_4_11.INIT0 = "0xc33c";
    defparam counter_30_add_4_11.INIT1 = "0xc33c";
    FA2 counter_30_add_4_9 (.A0(GND_net), .B0(GND_net), .C0(counter[7]), 
        .D0(n211), .CI0(n211), .A1(GND_net), .B1(GND_net), .C1(counter[8]), 
        .D1(n639), .CI1(n639), .CO0(n639), .CO1(n213), .S0(n1[7]), 
        .S1(n1[8]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30_add_4_9.INIT0 = "0xc33c";
    defparam counter_30_add_4_9.INIT1 = "0xc33c";
    FA2 counter_30_add_4_7 (.A0(GND_net), .B0(GND_net), .C0(counter[5]), 
        .D0(n209), .CI0(n209), .A1(GND_net), .B1(GND_net), .C1(counter[6]), 
        .D1(n618), .CI1(n618), .CO0(n618), .CO1(n211), .S0(n1[5]), 
        .S1(n1[6]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30_add_4_7.INIT0 = "0xc33c";
    defparam counter_30_add_4_7.INIT1 = "0xc33c";
    FA2 counter_30_add_4_5 (.A0(GND_net), .B0(GND_net), .C0(counter[3]), 
        .D0(n207), .CI0(n207), .A1(GND_net), .B1(GND_net), .C1(counter[4]), 
        .D1(n615), .CI1(n615), .CO0(n615), .CO1(n209), .S0(n1[3]), 
        .S1(n1[4]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30_add_4_5.INIT0 = "0xc33c";
    defparam counter_30_add_4_5.INIT1 = "0xc33c";
    FA2 counter_30_add_4_3 (.A0(GND_net), .B0(GND_net), .C0(counter[1]), 
        .D0(n205), .CI0(n205), .A1(GND_net), .B1(GND_net), .C1(counter[2]), 
        .D1(n612), .CI1(n612), .CO0(n612), .CO1(n207), .S0(n1[1]), 
        .S1(n1[2]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30_add_4_3.INIT0 = "0xc33c";
    defparam counter_30_add_4_3.INIT1 = "0xc33c";
    FA2 counter_30_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
        .A1(GND_net), .B1(VCC_net), .C1(counter[0]), .D1(n609), .CI1(n609), 
        .CO0(n609), .CO1(n205), .S1(n1[0]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30_add_4_1.INIT0 = "0xc33c";
    defparam counter_30_add_4_1.INIT1 = "0xc33c";
    FD1P3XZ sigma_i9 (.D(n112), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[9] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i9.REGSET = "RESET";
    defparam sigma_i9.SRMODE = "ASYNC";
    FA2 add_7_add_4_7 (.A0(GND_net), .B0(\sigma[5] ), .C0(GND_net), .D0(n186), 
        .CI0(n186), .A1(GND_net), .B1(\sigma[6] ), .C1(GND_net), .D1(n648), 
        .CI1(n648), .CO0(n648), .CO1(n188), .S0(n57[5]), .S1(n57[6]));   /* synthesis lineinfo="@4(163[26],163[39])"*/
    defparam add_7_add_4_7.INIT0 = "0xc33c";
    defparam add_7_add_4_7.INIT1 = "0xc33c";
    FD1P3XZ accum_i0_i2 (.D(n136), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[2]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i2.REGSET = "RESET";
    defparam accum_i0_i2.SRMODE = "ASYNC";
    FD1P3XZ accum_i0_i3 (.D(n135), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[3]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i3.REGSET = "RESET";
    defparam accum_i0_i3.SRMODE = "ASYNC";
    FA2 add_7_add_4_5 (.A0(GND_net), .B0(\sigma[3] ), .C0(GND_net), .D0(n184), 
        .CI0(n184), .A1(GND_net), .B1(\sigma[4] ), .C1(GND_net), .D1(n645), 
        .CI1(n645), .CO0(n645), .CO1(n186), .S0(n57[3]), .S1(n57[4]));   /* synthesis lineinfo="@4(163[26],163[39])"*/
    defparam add_7_add_4_5.INIT0 = "0xc33c";
    defparam add_7_add_4_5.INIT1 = "0xc33c";
    FA2 add_7_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(sigma[0]), .C1(o_analog_out_c), .D1(n606), .CI1(n606), .CO0(n606), 
        .CO1(n182), .S1(sigma_9__N_31[0]));   /* synthesis lineinfo="@4(163[26],163[39])"*/
    defparam add_7_add_4_1.INIT0 = "0xc33c";
    defparam add_7_add_4_1.INIT1 = "0xc33c";
    FA2 add_7_add_4_9 (.A0(GND_net), .B0(\sigma[7] ), .C0(GND_net), .D0(n188), 
        .CI0(n188), .A1(GND_net), .B1(\sigma[8] ), .C1(GND_net), .D1(n651), 
        .CI1(n651), .CO0(n651), .CO1(n190), .S0(n57[7]), .S1(n57[8]));   /* synthesis lineinfo="@4(163[26],163[39])"*/
    defparam add_7_add_4_9.INIT0 = "0xc33c";
    defparam add_7_add_4_9.INIT1 = "0xc33c";
    LUT4 i106_2_lut (.A(n57[7]), .B(rollover), .Z(n116)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i106_2_lut.INIT = "0x2222";
    FA2 add_7_add_4_11 (.A0(GND_net), .B0(\sigma[9] ), .C0(GND_net), .D0(n190), 
        .CI0(n190), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(n654), 
        .CI1(n654), .CO0(n654), .S0(n57[9]));   /* synthesis lineinfo="@4(163[26],163[39])"*/
    defparam add_7_add_4_11.INIT0 = "0xc33c";
    defparam add_7_add_4_11.INIT1 = "0xc33c";
    FA2 add_7_add_4_3 (.A0(GND_net), .B0(sigma[1]), .C0(GND_net), .D0(n182), 
        .CI0(n182), .A1(GND_net), .B1(\sigma[2] ), .C1(GND_net), .D1(n642), 
        .CI1(n642), .CO0(n642), .CO1(n184), .S0(n57[1]), .S1(n57[2]));   /* synthesis lineinfo="@4(163[26],163[39])"*/
    defparam add_7_add_4_3.INIT0 = "0xc33c";
    defparam add_7_add_4_3.INIT1 = "0xc33c";
    FD1P3XZ accum_i0_i4 (.D(n134), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[4]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i4.REGSET = "RESET";
    defparam accum_i0_i4.SRMODE = "ASYNC";
    FD1P3XZ accum_i0_i5 (.D(n133), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[5]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i5.REGSET = "RESET";
    defparam accum_i0_i5.SRMODE = "ASYNC";
    FD1P3XZ accum_i0_i6 (.D(n132), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[6]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i6.REGSET = "RESET";
    defparam accum_i0_i6.SRMODE = "ASYNC";
    FD1P3XZ accum_i0_i7 (.D(n131), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[7]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i7.REGSET = "RESET";
    defparam accum_i0_i7.SRMODE = "ASYNC";
    FD1P3XZ accum_i0_i0 (.D(n130), .SP(VCC_net_c), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(accum[0]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam accum_i0_i0.REGSET = "RESET";
    defparam accum_i0_i0.SRMODE = "ASYNC";
    FD1P3XZ counter_30__i8 (.D(n1[8]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[8]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i8.REGSET = "RESET";
    defparam counter_30__i8.SRMODE = "ASYNC";
    FD1P3XZ counter_30__i9 (.D(n1[9]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(counter[9]));   /* synthesis lineinfo="@4(204[14],204[25])"*/
    defparam counter_30__i9.REGSET = "RESET";
    defparam counter_30__i9.SRMODE = "ASYNC";
    FD1P3XZ sigma_i8 (.D(n114), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[8] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i8.REGSET = "RESET";
    defparam sigma_i8.SRMODE = "ASYNC";
    FD1P3XZ sigma_i7 (.D(n116), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[7] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i7.REGSET = "RESET";
    defparam sigma_i7.SRMODE = "ASYNC";
    FD1P3XZ sigma_i6 (.D(n118), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[6] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i6.REGSET = "RESET";
    defparam sigma_i6.SRMODE = "ASYNC";
    FD1P3XZ sigma_i5 (.D(n120), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[5] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i5.REGSET = "RESET";
    defparam sigma_i5.SRMODE = "ASYNC";
    LUT4 i105_2_lut (.A(n57[8]), .B(rollover), .Z(n114)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i105_2_lut.INIT = "0x2222";
    FD1P3XZ sigma_i4 (.D(n122), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[4] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i4.REGSET = "RESET";
    defparam sigma_i4.SRMODE = "ASYNC";
    FD1P3XZ sigma_i3 (.D(n124), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[3] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i3.REGSET = "RESET";
    defparam sigma_i3.SRMODE = "ASYNC";
    FD1P3XZ sigma_i2 (.D(n126), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(\sigma[2] ));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i2.REGSET = "RESET";
    defparam sigma_i2.SRMODE = "ASYNC";
    FD1P3XZ sigma_i1 (.D(n128), .SP(n113), .CK(i_clk_in_c), .SR(rstn_N_51), 
            .Q(sigma[1]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i1.REGSET = "RESET";
    defparam sigma_i1.SRMODE = "ASYNC";
    LUT4 i112_2_lut (.A(n57[1]), .B(rollover), .Z(n128)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i112_2_lut.INIT = "0x2222";
    LUT4 i111_2_lut (.A(n57[2]), .B(rollover), .Z(n126)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i111_2_lut.INIT = "0x2222";
    LUT4 i110_2_lut (.A(n57[3]), .B(rollover), .Z(n124)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i110_2_lut.INIT = "0x2222";
    LUT4 rstn_I_0_1_lut (.A(i_rst_in_c), .Z(rstn_N_51)) /* synthesis lut_function=(!(A)) */ ;   /* synthesis lineinfo="@3(164[6],164[11])"*/
    defparam rstn_I_0_1_lut.INIT = "0x5555";
    LUT4 i9_4_lut (.A(n17), .B(counter[6]), .C(n16), .D(counter[3]), 
         .Z(n542)) /* synthesis lut_function=(A (B (C (D)))) */ ;   /* synthesis lineinfo="@4(203[7],206[6])"*/
    defparam i9_4_lut.INIT = "0x8000";
    LUT4 i7_4_lut (.A(sigma[0]), .B(\sigma[8] ), .C(\sigma[9] ), .D(\sigma[2] ), 
         .Z(n17_adj_93)) /* synthesis lut_function=(A (B (C (D)))) */ ;   /* synthesis lineinfo="@4(162[17],162[23])"*/
    defparam i7_4_lut.INIT = "0x8000";
    LUT4 i5_2_lut (.A(\sigma[5] ), .B(sigma[1]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@4(162[17],162[23])"*/
    defparam i5_2_lut.INIT = "0x8888";
    LUT4 i66_4_lut (.A(rollover), .B(n17_adj_93), .C(n15), .D(n16_adj_94), 
         .Z(n113)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i66_4_lut.INIT = "0xbfff";
    LUT4 sigma_9__I_0_i1_3_lut (.A(sigma_9__N_31[0]), .B(o_analog_out_c), 
         .C(rollover), .Z(sigma_9__N_1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@4(161[18],164[12])"*/
    defparam sigma_9__I_0_i1_3_lut.INIT = "0xcaca";
    LUT4 i104_2_lut (.A(n57[9]), .B(rollover), .Z(n112)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam i104_2_lut.INIT = "0x2222";
    LUT4 i7_4_lut_adj_1 (.A(counter[1]), .B(counter[5]), .C(counter[7]), 
         .D(counter[4]), .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;   /* synthesis lineinfo="@4(203[7],206[6])"*/
    defparam i7_4_lut_adj_1.INIT = "0x8000";
    LUT4 i6_4_lut (.A(\sigma[7] ), .B(\sigma[3] ), .C(\sigma[4] ), .D(\sigma[6] ), 
         .Z(n16_adj_94)) /* synthesis lut_function=(A (B (C (D)))) */ ;   /* synthesis lineinfo="@4(162[17],162[23])"*/
    defparam i6_4_lut.INIT = "0x8000";
    LUT4 i6_4_lut_adj_2 (.A(counter[9]), .B(counter[0]), .C(counter[2]), 
         .D(counter[8]), .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;   /* synthesis lineinfo="@4(203[7],206[6])"*/
    defparam i6_4_lut_adj_2.INIT = "0x8000";
    \box_ave(LPF_DEPTH_BITS=3)  box_ave (.o_digital_out_c_7(o_digital_out_c_7), 
            .i_clk_in_c(i_clk_in_c), .rstn_N_51(rstn_N_51), .accum({accum}), 
            .accum_rdy(accum_rdy), .VCC_net(VCC_net), .o_sample_rdy_c(o_sample_rdy_c), 
            .o_digital_out_c_6(o_digital_out_c_6), .o_digital_out_c_5(o_digital_out_c_5), 
            .o_digital_out_c_4(o_digital_out_c_4), .o_digital_out_c_3(o_digital_out_c_3), 
            .o_digital_out_c_2(o_digital_out_c_2), .o_digital_out_c_1(o_digital_out_c_1), 
            .o_digital_out_c_0(o_digital_out_c_0), .GND_net(GND_net));   /* synthesis lineinfo="@4(182[1],189[2])"*/
    FD1P3XZ sigma_i0 (.D(sigma_9__N_1[0]), .SP(n113), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(sigma[0]));   /* synthesis lineinfo="@4(156[14],166[8])"*/
    defparam sigma_i0.REGSET = "RESET";
    defparam sigma_i0.SRMODE = "ASYNC";
    VHI i2 (.Z(VCC_net_c));
    
endmodule

//
// Verilog Description of module \box_ave(LPF_DEPTH_BITS=3) 
//

module \box_ave(LPF_DEPTH_BITS=3)  (o_digital_out_c_7, i_clk_in_c, rstn_N_51, 
            accum, accum_rdy, VCC_net, o_sample_rdy_c, o_digital_out_c_6, 
            o_digital_out_c_5, o_digital_out_c_4, o_digital_out_c_3, o_digital_out_c_2, 
            o_digital_out_c_1, o_digital_out_c_0, GND_net);
    output o_digital_out_c_7;
    input i_clk_in_c;
    input rstn_N_51;
    input [7:0]accum;
    input accum_rdy;
    input VCC_net;
    output o_sample_rdy_c;
    output o_digital_out_c_6;
    output o_digital_out_c_5;
    output o_digital_out_c_4;
    output o_digital_out_c_3;
    output o_digital_out_c_2;
    output o_digital_out_c_1;
    output o_digital_out_c_0;
    input GND_net;
    
    wire i_clk_in_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@2(78[10],78[18])"*/
    wire [10:0]accum_c;   /* synthesis lineinfo="@3(90[41],90[46])"*/
    
    wire latch_result;
    wire [7:0]raw_data_d1;   /* synthesis lineinfo="@3(92[27],92[38])"*/
    wire [2:0]count;   /* synthesis lineinfo="@3(91[41],91[46])"*/
    wire [10:0]n61;
    
    wire sample_d1, sample_d2;
    wire [2:0]n1;
    wire [10:0]n49;
    
    wire accumulate;
    wire [10:0]n86;
    
    wire n201, n636, n199, n633, n197, n630, n195, n627, n193, 
        n624, n621, VCC_net_c;
    
    FD1P3XZ raw_data_d1_i0 (.D(accum[0]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[0]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i0.REGSET = "RESET";
    defparam raw_data_d1_i0.SRMODE = "ASYNC";
    FD1P3XZ sample_d2_31 (.D(sample_d1), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(sample_d2));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam sample_d2_31.REGSET = "RESET";
    defparam sample_d2_31.SRMODE = "ASYNC";
    LUT4 i96_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[7]), 
         .Z(n61[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i96_2_lut_4_lut.INIT = "0xfe00";
    FD1P3XZ count_31__i0 (.D(n1[0]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(count[0]));   /* synthesis lineinfo="@3(132[31],132[40])"*/
    defparam count_31__i0.REGSET = "RESET";
    defparam count_31__i0.SRMODE = "ASYNC";
    FD1P3XZ sample_d1_30 (.D(accum_rdy), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(sample_d1));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam sample_d1_30.REGSET = "RESET";
    defparam sample_d1_30.SRMODE = "ASYNC";
    FD1P3XZ result_valid_33 (.D(latch_result), .SP(VCC_net), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_sample_rdy_c));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam result_valid_33.REGSET = "RESET";
    defparam result_valid_33.SRMODE = "ASYNC";
    LUT4 i95_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[8]), 
         .Z(n61[8])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i95_2_lut_4_lut.INIT = "0xfe00";
    FD1P3XZ accum_32__i0 (.D(n49[0]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(n86[0]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i0.REGSET = "RESET";
    defparam accum_32__i0.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i10 (.D(n49[10]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[10]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i10.REGSET = "RESET";
    defparam accum_32__i10.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i9 (.D(n49[9]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[9]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i9.REGSET = "RESET";
    defparam accum_32__i9.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i8 (.D(n49[8]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[8]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i8.REGSET = "RESET";
    defparam accum_32__i8.SRMODE = "ASYNC";
    LUT4 i98_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[5]), 
         .Z(n61[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i98_2_lut_4_lut.INIT = "0xfe00";
    LUT4 i97_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[6]), 
         .Z(n61[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i97_2_lut_4_lut.INIT = "0xfe00";
    FD1P3XZ accum_32__i7 (.D(n49[7]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[7]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i7.REGSET = "RESET";
    defparam accum_32__i7.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i6 (.D(n49[6]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[6]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i6.REGSET = "RESET";
    defparam accum_32__i6.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i5 (.D(n49[5]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[5]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i5.REGSET = "RESET";
    defparam accum_32__i5.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i4 (.D(n49[4]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[4]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i4.REGSET = "RESET";
    defparam accum_32__i4.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i3 (.D(n49[3]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(accum_c[3]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i3.REGSET = "RESET";
    defparam accum_32__i3.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i2 (.D(n49[2]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(n86[2]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i2.REGSET = "RESET";
    defparam accum_32__i2.SRMODE = "ASYNC";
    FD1P3XZ accum_32__i1 (.D(n49[1]), .SP(accumulate), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(n86[1]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32__i1.REGSET = "RESET";
    defparam accum_32__i1.SRMODE = "ASYNC";
    FD1P3XZ count_31__i2 (.D(n1[2]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(count[2]));   /* synthesis lineinfo="@3(132[31],132[40])"*/
    defparam count_31__i2.REGSET = "RESET";
    defparam count_31__i2.SRMODE = "ASYNC";
    FD1P3XZ ave_data_out_i0_i7 (.D(accum_c[9]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_6));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i7.REGSET = "RESET";
    defparam ave_data_out_i0_i7.SRMODE = "ASYNC";
    FD1P3XZ ave_data_out_i0_i6 (.D(accum_c[8]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_5));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i6.REGSET = "RESET";
    defparam ave_data_out_i0_i6.SRMODE = "ASYNC";
    FD1P3XZ ave_data_out_i0_i5 (.D(accum_c[7]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_4));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i5.REGSET = "RESET";
    defparam ave_data_out_i0_i5.SRMODE = "ASYNC";
    FD1P3XZ ave_data_out_i0_i4 (.D(accum_c[6]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_3));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i4.REGSET = "RESET";
    defparam ave_data_out_i0_i4.SRMODE = "ASYNC";
    FD1P3XZ ave_data_out_i0_i3 (.D(accum_c[5]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_2));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i3.REGSET = "RESET";
    defparam ave_data_out_i0_i3.SRMODE = "ASYNC";
    FD1P3XZ ave_data_out_i0_i2 (.D(accum_c[4]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_1));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i2.REGSET = "RESET";
    defparam ave_data_out_i0_i2.SRMODE = "ASYNC";
    FD1P3XZ ave_data_out_i0_i1 (.D(accum_c[3]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_0));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i1.REGSET = "RESET";
    defparam ave_data_out_i0_i1.SRMODE = "ASYNC";
    FD1P3XZ count_31__i1 (.D(n1[1]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(count[1]));   /* synthesis lineinfo="@3(132[31],132[40])"*/
    defparam count_31__i1.REGSET = "RESET";
    defparam count_31__i1.SRMODE = "ASYNC";
    FD1P3XZ raw_data_d1_i7 (.D(accum[7]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[7]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i7.REGSET = "RESET";
    defparam raw_data_d1_i7.SRMODE = "ASYNC";
    FD1P3XZ raw_data_d1_i6 (.D(accum[6]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[6]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i6.REGSET = "RESET";
    defparam raw_data_d1_i6.SRMODE = "ASYNC";
    FD1P3XZ raw_data_d1_i5 (.D(accum[5]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[5]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i5.REGSET = "RESET";
    defparam raw_data_d1_i5.SRMODE = "ASYNC";
    FD1P3XZ raw_data_d1_i4 (.D(accum[4]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[4]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i4.REGSET = "RESET";
    defparam raw_data_d1_i4.SRMODE = "ASYNC";
    FD1P3XZ raw_data_d1_i3 (.D(accum[3]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[3]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i3.REGSET = "RESET";
    defparam raw_data_d1_i3.SRMODE = "ASYNC";
    FD1P3XZ raw_data_d1_i2 (.D(accum[2]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[2]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i2.REGSET = "RESET";
    defparam raw_data_d1_i2.SRMODE = "ASYNC";
    FD1P3XZ raw_data_d1_i1 (.D(accum[1]), .SP(VCC_net_c), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(raw_data_d1[1]));   /* synthesis lineinfo="@3(111[11],116[5])"*/
    defparam raw_data_d1_i1.REGSET = "RESET";
    defparam raw_data_d1_i1.SRMODE = "ASYNC";
    FA2 accum_32_add_4_11 (.A0(GND_net), .B0(GND_net), .C0(n61[9]), .D0(n201), 
        .CI0(n201), .A1(GND_net), .B1(GND_net), .C1(n61[10]), .D1(n636), 
        .CI1(n636), .CO0(n636), .S0(n49[9]), .S1(n49[10]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32_add_4_11.INIT0 = "0xc33c";
    defparam accum_32_add_4_11.INIT1 = "0xc33c";
    FA2 accum_32_add_4_9 (.A0(GND_net), .B0(raw_data_d1[7]), .C0(n61[7]), 
        .D0(n199), .CI0(n199), .A1(GND_net), .B1(GND_net), .C1(n61[8]), 
        .D1(n633), .CI1(n633), .CO0(n633), .CO1(n201), .S0(n49[7]), 
        .S1(n49[8]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32_add_4_9.INIT0 = "0xc33c";
    defparam accum_32_add_4_9.INIT1 = "0xc33c";
    FA2 accum_32_add_4_7 (.A0(GND_net), .B0(raw_data_d1[5]), .C0(n61[5]), 
        .D0(n197), .CI0(n197), .A1(GND_net), .B1(raw_data_d1[6]), .C1(n61[6]), 
        .D1(n630), .CI1(n630), .CO0(n630), .CO1(n199), .S0(n49[5]), 
        .S1(n49[6]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32_add_4_7.INIT0 = "0xc33c";
    defparam accum_32_add_4_7.INIT1 = "0xc33c";
    FA2 accum_32_add_4_5 (.A0(GND_net), .B0(raw_data_d1[3]), .C0(n61[3]), 
        .D0(n195), .CI0(n195), .A1(GND_net), .B1(raw_data_d1[4]), .C1(n61[4]), 
        .D1(n627), .CI1(n627), .CO0(n627), .CO1(n197), .S0(n49[3]), 
        .S1(n49[4]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32_add_4_5.INIT0 = "0xc33c";
    defparam accum_32_add_4_5.INIT1 = "0xc33c";
    FA2 accum_32_add_4_3 (.A0(GND_net), .B0(raw_data_d1[1]), .C0(n61[1]), 
        .D0(n193), .CI0(n193), .A1(GND_net), .B1(raw_data_d1[2]), .C1(n61[2]), 
        .D1(n624), .CI1(n624), .CO0(n624), .CO1(n195), .S0(n49[1]), 
        .S1(n49[2]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32_add_4_3.INIT0 = "0xc33c";
    defparam accum_32_add_4_3.INIT1 = "0xc33c";
    FA2 accum_32_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(raw_data_d1[0]), .C1(n61[0]), .D1(n621), .CI1(n621), .CO0(n621), 
        .CO1(n193), .S1(n49[0]));   /* synthesis lineinfo="@3(151[17],151[46])"*/
    defparam accum_32_add_4_1.INIT0 = "0xc33c";
    defparam accum_32_add_4_1.INIT1 = "0xc33c";
    LUT4 accumulate_I_0_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), 
         .D(accumulate), .Z(latch_result)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam accumulate_I_0_2_lut_4_lut.INIT = "0x0100";
    LUT4 i100_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[3]), 
         .Z(n61[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i100_2_lut_4_lut.INIT = "0xfe00";
    LUT4 i99_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[4]), 
         .Z(n61[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i99_2_lut_4_lut.INIT = "0xfe00";
    LUT4 i128_3_lut_4_lut (.A(accumulate), .B(count[0]), .C(count[1]), 
         .D(count[2]), .Z(n1[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   /* synthesis lineinfo="@3(132[31],132[40])"*/
    defparam i128_3_lut_4_lut.INIT = "0x7f80";
    LUT4 i102_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(n86[1]), 
         .Z(n61[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i102_2_lut_4_lut.INIT = "0xfe00";
    LUT4 i101_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(n86[2]), 
         .Z(n61[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i101_2_lut_4_lut.INIT = "0xfe00";
    LUT4 i93_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(n86[0]), 
         .Z(n61[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i93_2_lut_4_lut.INIT = "0xfe00";
    LUT4 i113_2_lut_3_lut (.A(sample_d1), .B(sample_d2), .C(count[0]), 
         .Z(n1[0])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   /* synthesis lineinfo="@3(132[31],132[40])"*/
    defparam i113_2_lut_3_lut.INIT = "0xd2d2";
    LUT4 i121_2_lut_3_lut_4_lut (.A(sample_d1), .B(sample_d2), .C(count[0]), 
         .D(count[1]), .Z(n1[1])) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (D)) */ ;   /* synthesis lineinfo="@3(132[31],132[40])"*/
    defparam i121_2_lut_3_lut_4_lut.INIT = "0xdf20";
    LUT4 i94_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[9]), 
         .Z(n61[9])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i94_2_lut_4_lut.INIT = "0xfe00";
    LUT4 sample_d1_I_0_2_lut (.A(sample_d1), .B(sample_d2), .Z(accumulate)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@3(119[22],119[45])"*/
    defparam sample_d1_I_0_2_lut.INIT = "0x2222";
    LUT4 i92_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(accum_c[10]), 
         .Z(n61[10])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@3(120[38],120[50])"*/
    defparam i92_2_lut_4_lut.INIT = "0xfe00";
    FD1P3XZ ave_data_out_i0_i8 (.D(accum_c[10]), .SP(latch_result), .CK(i_clk_in_c), 
            .SR(rstn_N_51), .Q(o_digital_out_c_7));   /* synthesis lineinfo="@3(166[14],168[8])"*/
    defparam ave_data_out_i0_i8.REGSET = "RESET";
    defparam ave_data_out_i0_i8.SRMODE = "ASYNC";
    VHI i2 (.Z(VCC_net_c));
    
endmodule

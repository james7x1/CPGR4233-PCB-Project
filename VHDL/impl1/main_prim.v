// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Mar 02 12:39:52 2026
//
// Verilog Description of module main
//

module main (CLK, ADC_CS, ADC_RD, ADC_RDY, ADC_INT, RST, ADC0, 
            ADC1, ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, LED0, 
            LED1, LED2, LED3, LED4, LED5, LED6, LED7, MODE0, 
            MODE1, MODE2, MODE3, SPEED0, SPEED1, SPEED2, SPEED3);   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(20[8:12])
    input CLK;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(21[5:8])
    output ADC_CS;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(23[5:11])
    output ADC_RD;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(24[5:11])
    input ADC_RDY;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(25[5:12])
    input ADC_INT;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(26[5:12])
    input RST;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(28[5:8])
    input ADC0;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(30[5:9])
    input ADC1;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(31[5:9])
    input ADC2;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(32[5:9])
    input ADC3;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(33[5:9])
    input ADC4;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(34[5:9])
    input ADC5;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(35[5:9])
    input ADC6;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(36[5:9])
    input ADC7;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(37[5:9])
    output LED0;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(39[5:9])
    output LED1;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(40[5:9])
    output LED2;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(41[5:9])
    output LED3;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(42[5:9])
    output LED4;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(43[5:9])
    output LED5;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(44[5:9])
    output LED6;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(45[5:9])
    output LED7;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(46[5:9])
    input MODE0;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(48[5:10])
    input MODE1;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(49[5:10])
    input MODE2;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(50[5:10])
    input MODE3;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(51[5:10])
    input SPEED0;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(52[5:11])
    input SPEED1;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(53[5:11])
    input SPEED2;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(54[5:11])
    input SPEED3;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(55[5:11])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(21[5:8])
    wire RST_c /* synthesis is_clock=1, SET_AS_NETWORK=RST_c */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(28[5:8])
    wire ADC_CLK /* synthesis is_clock=1, SET_AS_NETWORK=ADC_CLK */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(66[12:19])
    wire DSP_CLK /* synthesis is_clock=1, SET_AS_NETWORK=DSP_CLK */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(67[12:19])
    
    wire GND_net, VCC_net, ADC_RD_c, ADC_INT_c, ADC0_c, ADC1_c, 
        ADC2_c, ADC3_c, ADC4_c, ADC5_c, ADC6_c, LED0_c, LED1_c, 
        LED2_c, LED3_c, LED4_c, LED5_c, LED6_c, LED7_c, MODE0_c, 
        MODE2_c, SPEED0_c, SPEED1_c;
    wire [2:0]state;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(62[12:17])
    wire [24:0]timer7800;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(64[12:21])
    
    wire n6, n1;
    wire [9:0]timer62500;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(65[12:22])
    
    wire n1276, n9, DSP_CLK_enable_8, pauseFlag, n6_adj_1, n1054, 
        n1053, DSP_CLK_N_232, pauseFlag_N_65, n25, n24, n23, n22, 
        n21, n20, n19, n18, n17, n16, n6_adj_2, n589, n14, 
        n13, n12, n11, n1311, n10;
    wire [2:0]state_2__N_69;
    
    wire n1055;
    wire [2:0]state_2__N_1;
    
    wire n114, n126, n1052, n113, n125, n1051, n1050, n112, 
        n124, n123, LED3_N_175, n1049, n1048, n1047, DSP_CLK_enable_1, 
        n111, n122, n1046, n110, n121, n1045, LED2_N_151, n109, 
        n120, n770, n119, n1213, n118, n1212, n130, n108, n117, 
        n129, n1044, n107, n116, n128, n106, n115, n127, n9_adj_3, 
        n8, n7, n6_adj_4, n5, LED7_N_221, LED0_N_74, LED1_N_121, 
        LED2_N_142, LED3_N_163, LED4_N_184, LED5_N_196, LED6_N_208, 
        LED7_N_220, ADC_INT_N_73, n739, n3, n2, n3_adj_5, n4, 
        n5_adj_6, n6_adj_7, n7_adj_8, n8_adj_9, n9_adj_10, n28, 
        n1042, n2_adj_11, n3_adj_12, n2_adj_13, n3_adj_14, n1272, 
        n42, n43, n44, n45, n46, n47, n48, n49, n50, n1041, 
        n1040, n1211, n983, n1039, n1271, n1265, n1270, n10_adj_15, 
        DSP_CLK_enable_6, n9_adj_16, n1242, n1266, n1313, n1312;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX pauseFlag_305 (.D(pauseFlag_N_65), .CK(RST_c), .Q(pauseFlag)) /* synthesis lse_init_val=0 */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(112[3] 118[10])
    defparam pauseFlag_305.GSR = "ENABLED";
    CCU2D timer7800_390_add_4_21 (.A0(n6_adj_4), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n5), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1053), .COUT(n1054), .S0(n111), .S1(n110));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_21.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_21.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_21.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_21.INJECT1_1 = "NO";
    CCU2D timer7800_390_add_4_19 (.A0(n8), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n7), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1052), .COUT(n1053), .S0(n113), .S1(n112));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_19.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_19.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_19.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_19.INJECT1_1 = "NO";
    FD1S3AX timer62500_389_391__i0 (.D(n50), .CK(CLK_c), .Q(n9_adj_10)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i0.GSR = "ENABLED";
    FD1P3AX LED4_311 (.D(LED4_N_184), .SP(DSP_CLK_enable_1), .CK(DSP_CLK), 
            .Q(LED4_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED4_311.GSR = "ENABLED";
    FD1P3AX timer7800_390__i0 (.D(n130), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i0.GSR = "ENABLED";
    LUT4 state_2__I_0_330_i6_3_lut (.A(LED7_N_221), .B(state[1]), .C(state[0]), 
         .Z(n6_adj_1)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+(C)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam state_2__I_0_330_i6_3_lut.init = 16'h2929;
    PFUMX state_2__I_0_325_i7 (.BLUT(n2_adj_11), .ALUT(n3_adj_12), .C0(n1211), 
          .Z(LED0_N_74));
    LUT4 i560_1_lut (.A(MODE0_c), .Z(n739)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(48[5:10])
    defparam i560_1_lut.init = 16'h5555;
    FD1P3AX LED2_309 (.D(LED2_N_142), .SP(DSP_CLK_enable_6), .CK(DSP_CLK), 
            .Q(LED2_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED2_309.GSR = "ENABLED";
    FD1P3AX LED5_312 (.D(LED5_N_196), .SP(DSP_CLK_enable_6), .CK(DSP_CLK), 
            .Q(LED5_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED5_312.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(state[0]), .B(ADC6_c), .Z(n28)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(123[9] 147[16])
    defparam i1_2_lut.init = 16'h4444;
    FD1P3AX LED1_308 (.D(LED1_N_121), .SP(DSP_CLK_enable_6), .CK(DSP_CLK), 
            .Q(LED1_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED1_308.GSR = "ENABLED";
    CCU2D timer7800_390_add_4_25 (.A0(timer7800[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer7800[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1055), .S0(n107), .S1(n106));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_25.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_25.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_25.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_25.INJECT1_1 = "NO";
    LUT4 i420_4_lut (.A(LED3_N_175), .B(n9_adj_16), .C(state[0]), .D(n10_adj_15), 
         .Z(n589)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam i420_4_lut.init = 16'hca0a;
    LUT4 state_2__I_0_323_i2_3_lut (.A(state_2__N_69[2]), .B(MODE2_c), .C(MODE0_c), 
         .Z(state_2__N_1[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(124[13] 146[20])
    defparam state_2__I_0_323_i2_3_lut.init = 16'hcaca;
    CCU2D timer7800_390_add_4_23 (.A0(timer7800[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1054), .COUT(n1055), .S0(n109), .S1(n108));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_23.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_23.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_23.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_23.INJECT1_1 = "NO";
    FD1P3AX LED0_307 (.D(LED0_N_74), .SP(DSP_CLK_enable_6), .CK(DSP_CLK), 
            .Q(LED0_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED0_307.GSR = "ENABLED";
    CCU2D timer7800_390_add_4_17 (.A0(n10), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n9_adj_3), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1051), .COUT(n1052), .S0(n115), .S1(n114));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_17.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_17.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_17.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_17.INJECT1_1 = "NO";
    CCU2D timer7800_390_add_4_15 (.A0(n12), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n11), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1050), .COUT(n1051), .S0(n117), .S1(n116));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_15.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_15.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_15.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_15.INJECT1_1 = "NO";
    LUT4 state_2__I_0_345_i7_3_lut (.A(n1313), .B(n6), .C(state[2]), .Z(LED4_N_184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam state_2__I_0_345_i7_3_lut.init = 16'hcaca;
    CCU2D timer7800_390_add_4_13 (.A0(n14), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1049), .COUT(n1050), .S0(n119), .S1(n118));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_13.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_13.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_13.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_13.INJECT1_1 = "NO";
    OB LED0_pad (.I(LED0_c), .O(LED0));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(39[5:9])
    LUT4 i1026_2_lut (.A(state[2]), .B(state[1]), .Z(n1211)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam i1026_2_lut.init = 16'hbbbb;
    CCU2D timer7800_390_add_4_11 (.A0(n16), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer7800[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1048), .COUT(n1049), .S0(n121), .S1(n120));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_11.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_11.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_11.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_11.INJECT1_1 = "NO";
    CCU2D timer7800_390_add_4_9 (.A0(n18), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n17), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1047), .COUT(n1048), .S0(n123), .S1(n122));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_9.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_9.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_9.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_9.INJECT1_1 = "NO";
    CCU2D timer7800_390_add_4_7 (.A0(n20), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n19), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1046), .COUT(n1047), .S0(n125), .S1(n124));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_7.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_7.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_7.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_7.INJECT1_1 = "NO";
    CCU2D timer7800_390_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n21), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1045), .COUT(n1046), .S0(n127), .S1(n126));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_5.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_5.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_5.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_5.INJECT1_1 = "NO";
    FD1S3AX DSP_CLK_303 (.D(DSP_CLK_N_232), .CK(CLK_c), .Q(DSP_CLK)) /* synthesis lse_init_val=0 */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(86[9] 107[16])
    defparam DSP_CLK_303.GSR = "ENABLED";
    OB ADC_RD_pad (.I(ADC_RD_c), .O(ADC_RD));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(24[5:11])
    FD1S3JX state_i0 (.D(state_2__N_69[0]), .CK(CLK_c), .PD(n739), .Q(state[0]));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(123[9] 147[16])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX LED6_313 (.D(LED6_N_208), .SP(DSP_CLK_enable_6), .CK(DSP_CLK), 
            .Q(LED6_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED6_313.GSR = "ENABLED";
    FD1P3AX LED3_310 (.D(LED3_N_163), .SP(DSP_CLK_enable_8), .CK(DSP_CLK), 
            .Q(LED3_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED3_310.GSR = "ENABLED";
    FD1P3AX LED7_314 (.D(LED7_N_220), .SP(DSP_CLK_enable_8), .CK(DSP_CLK), 
            .Q(LED7_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam LED7_314.GSR = "ENABLED";
    FD1P3AX diagFlag_315 (.D(n6_adj_1), .SP(state[2]), .CK(DSP_CLK), .Q(LED7_N_221)) /* synthesis lse_init_val=0 */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(153[3] 401[10])
    defparam diagFlag_315.GSR = "ENABLED";
    FD1S3AX ADC_CS_316 (.D(ADC_INT_N_73), .CK(ADC_CLK), .Q(ADC_RD_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(406[9] 413[16])
    defparam ADC_CS_316.GSR = "ENABLED";
    FD1S3AX ADC_CLK_301 (.D(timer62500[8]), .CK(CLK_c), .Q(ADC_CLK)) /* synthesis lse_init_val=0 */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(76[9] 79[16])
    defparam ADC_CLK_301.GSR = "ENABLED";
    FD1P3AX timer7800_390__i24 (.D(n106), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(timer7800[24])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i24.GSR = "ENABLED";
    CCU2D timer7800_390_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n23), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1044), .COUT(n1045), .S0(n129), .S1(n128));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_3.INIT0 = 16'hfaaa;
    defparam timer7800_390_add_4_3.INIT1 = 16'hfaaa;
    defparam timer7800_390_add_4_3.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_3.INJECT1_1 = "NO";
    OB ADC_CS_pad (.I(ADC_RD_c), .O(ADC_CS));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(23[5:11])
    PFUMX i1044 (.BLUT(n1266), .ALUT(n1265), .C0(state[2]), .Z(LED3_N_163));
    CCU2D timer7800_390_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n25), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1044), .S1(n130));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390_add_4_1.INIT0 = 16'hF000;
    defparam timer7800_390_add_4_1.INIT1 = 16'h0555;
    defparam timer7800_390_add_4_1.INJECT1_0 = "NO";
    defparam timer7800_390_add_4_1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i836_3_lut (.A(state[1]), .B(state[0]), .C(LED7_N_221), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam i836_3_lut.init = 16'h2323;
    LUT4 ADC_INT_I_0_1_lut (.A(ADC_INT_c), .Z(ADC_INT_N_73)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(409[17:30])
    defparam ADC_INT_I_0_1_lut.init = 16'h5555;
    FD1P3AX timer7800_390__i23 (.D(n107), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(timer7800[23])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i23.GSR = "ENABLED";
    FD1P3AX timer7800_390__i22 (.D(n108), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i22.GSR = "ENABLED";
    FD1P3AX timer7800_390__i21 (.D(n109), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(timer7800[21])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i21.GSR = "ENABLED";
    FD1P3AX timer7800_390__i20 (.D(n110), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i20.GSR = "ENABLED";
    FD1P3AX timer7800_390__i19 (.D(n111), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n6_adj_4)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i19.GSR = "ENABLED";
    FD1P3AX timer7800_390__i18 (.D(n112), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i18.GSR = "ENABLED";
    FD1P3AX timer7800_390__i17 (.D(n113), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i17.GSR = "ENABLED";
    FD1P3AX timer7800_390__i16 (.D(n114), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n9_adj_3)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i16.GSR = "ENABLED";
    FD1P3AX timer7800_390__i15 (.D(n115), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i15.GSR = "ENABLED";
    FD1P3AX timer7800_390__i14 (.D(n116), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i14.GSR = "ENABLED";
    FD1P3AX timer7800_390__i13 (.D(n117), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i13.GSR = "ENABLED";
    FD1P3AX timer7800_390__i12 (.D(n118), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i12.GSR = "ENABLED";
    FD1P3AX timer7800_390__i11 (.D(n119), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i11.GSR = "ENABLED";
    FD1P3AX timer7800_390__i10 (.D(n120), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(timer7800[10])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i10.GSR = "ENABLED";
    FD1P3AX timer7800_390__i9 (.D(n121), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i9.GSR = "ENABLED";
    FD1P3AX timer7800_390__i8 (.D(n122), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i8.GSR = "ENABLED";
    FD1P3AX timer7800_390__i7 (.D(n123), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i7.GSR = "ENABLED";
    FD1P3AX timer7800_390__i6 (.D(n124), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i6.GSR = "ENABLED";
    FD1P3AX timer7800_390__i5 (.D(n125), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i5.GSR = "ENABLED";
    FD1P3AX timer7800_390__i4 (.D(n126), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i4.GSR = "ENABLED";
    FD1P3AX timer7800_390__i3 (.D(n127), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i3.GSR = "ENABLED";
    FD1P3AX timer7800_390__i2 (.D(n128), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i2.GSR = "ENABLED";
    FD1P3AX timer7800_390__i1 (.D(n129), .SP(pauseFlag_N_65), .CK(CLK_c), 
            .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer7800_390__i1.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i8 (.D(n42), .CK(CLK_c), .Q(timer62500[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i8.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i7 (.D(n43), .CK(CLK_c), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i7.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i6 (.D(n44), .CK(CLK_c), .Q(n3_adj_5)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i6.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i5 (.D(n45), .CK(CLK_c), .Q(n4)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i5.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i4 (.D(n46), .CK(CLK_c), .Q(n5_adj_6)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i4.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i3 (.D(n47), .CK(CLK_c), .Q(n6_adj_7)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i3.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i2 (.D(n48), .CK(CLK_c), .Q(n7_adj_8)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i2.GSR = "ENABLED";
    FD1S3AX timer62500_389_391__i1 (.D(n49), .CK(CLK_c), .Q(n8_adj_9)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391__i1.GSR = "ENABLED";
    FD1S3AX state_i2 (.D(state_2__N_1[2]), .CK(CLK_c), .Q(state[2]));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(123[9] 147[16])
    defparam state_i2.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(state_2__N_1[1]), .CK(CLK_c), .Q(state[1]));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(123[9] 147[16])
    defparam state_i1.GSR = "ENABLED";
    OB LED1_pad (.I(LED1_c), .O(LED1));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(40[5:9])
    OB LED2_pad (.I(LED2_c), .O(LED2));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(41[5:9])
    OB LED3_pad (.I(LED3_c), .O(LED3));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(42[5:9])
    OB LED4_pad (.I(LED4_c), .O(LED4));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(43[5:9])
    OB LED5_pad (.I(LED5_c), .O(LED5));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(44[5:9])
    OB LED6_pad (.I(LED6_c), .O(LED6));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(45[5:9])
    OB LED7_pad (.I(LED7_c), .O(LED7));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(46[5:9])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(21[5:8])
    IB ADC_INT_pad (.I(ADC_INT), .O(ADC_INT_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(26[5:12])
    IB RST_pad (.I(RST), .O(RST_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(28[5:8])
    IB ADC0_pad (.I(ADC0), .O(ADC0_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(30[5:9])
    IB ADC1_pad (.I(ADC1), .O(ADC1_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(31[5:9])
    IB ADC2_pad (.I(ADC2), .O(ADC2_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(32[5:9])
    IB ADC3_pad (.I(ADC3), .O(ADC3_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(33[5:9])
    IB ADC4_pad (.I(ADC4), .O(ADC4_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(34[5:9])
    IB ADC5_pad (.I(ADC5), .O(ADC5_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(35[5:9])
    IB ADC6_pad (.I(ADC6), .O(ADC6_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(36[5:9])
    IB ADC7_pad (.I(ADC7), .O(LED3_N_175));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(37[5:9])
    IB MODE0_pad (.I(MODE0), .O(MODE0_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(48[5:10])
    IB state_2__N_66_pad_1 (.I(MODE1), .O(state_2__N_69[2]));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(49[5:10])
    IB MODE2_pad (.I(MODE2), .O(MODE2_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(50[5:10])
    IB SPEED0_pad (.I(SPEED0), .O(SPEED0_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(52[5:11])
    IB SPEED1_pad (.I(SPEED1), .O(SPEED1_c));   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(53[5:11])
    CCU2D timer62500_389_391_add_4_9 (.A0(n2), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer62500[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1042), .S0(n43), .S1(n42));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391_add_4_9.INIT0 = 16'hfaaa;
    defparam timer62500_389_391_add_4_9.INIT1 = 16'hfaaa;
    defparam timer62500_389_391_add_4_9.INJECT1_0 = "NO";
    defparam timer62500_389_391_add_4_9.INJECT1_1 = "NO";
    CCU2D timer62500_389_391_add_4_7 (.A0(n4), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3_adj_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1041), .COUT(n1042), .S0(n45), .S1(n44));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391_add_4_7.INIT0 = 16'hfaaa;
    defparam timer62500_389_391_add_4_7.INIT1 = 16'hfaaa;
    defparam timer62500_389_391_add_4_7.INJECT1_0 = "NO";
    defparam timer62500_389_391_add_4_7.INJECT1_1 = "NO";
    CCU2D timer62500_389_391_add_4_5 (.A0(n6_adj_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n5_adj_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1040), .COUT(n1041), .S0(n47), .S1(n46));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391_add_4_5.INIT0 = 16'hfaaa;
    defparam timer62500_389_391_add_4_5.INIT1 = 16'hfaaa;
    defparam timer62500_389_391_add_4_5.INJECT1_0 = "NO";
    defparam timer62500_389_391_add_4_5.INJECT1_1 = "NO";
    CCU2D timer62500_389_391_add_4_3 (.A0(n8_adj_9), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n7_adj_8), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1039), .COUT(n1040), .S0(n49), .S1(n48));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391_add_4_3.INIT0 = 16'hfaaa;
    defparam timer62500_389_391_add_4_3.INIT1 = 16'hfaaa;
    defparam timer62500_389_391_add_4_3.INJECT1_0 = "NO";
    defparam timer62500_389_391_add_4_3.INJECT1_1 = "NO";
    PFUMX i1036 (.BLUT(n1242), .ALUT(n1265), .C0(state[2]), .Z(LED1_N_121));
    PFUMX state_2__I_0_338_i7 (.BLUT(n2_adj_13), .ALUT(n3_adj_14), .C0(n1211), 
          .Z(LED2_N_142));
    LUT4 pauseFlag_I_0_1_lut (.A(pauseFlag), .Z(pauseFlag_N_65)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(104[7:22])
    defparam pauseFlag_I_0_1_lut.init = 16'h5555;
    LUT4 i1029_2_lut (.A(MODE2_c), .B(state_2__N_69[2]), .Z(state_2__N_69[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1029_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_18_3_lut (.A(LED3_N_175), .B(ADC6_c), .C(ADC5_c), 
         .Z(n1276)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(324[23:41])
    defparam i1_2_lut_rep_18_3_lut.init = 16'h4040;
    LUT4 state_2__I_0_i7_3_lut (.A(n589), .B(n6_adj_2), .C(state[2]), 
         .Z(LED7_N_220)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam state_2__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 i1022_2_lut (.A(state_2__N_69[2]), .B(MODE0_c), .Z(state_2__N_1[2])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(124[13] 146[20])
    defparam i1022_2_lut.init = 16'h9999;
    CCU2D timer62500_389_391_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n9_adj_10), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1039), .S1(n50));   // C:/lscc/diamond/3.14/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam timer62500_389_391_add_4_1.INIT0 = 16'hF000;
    defparam timer62500_389_391_add_4_1.INIT1 = 16'h0555;
    defparam timer62500_389_391_add_4_1.INJECT1_0 = "NO";
    defparam timer62500_389_391_add_4_1.INJECT1_1 = "NO";
    LUT4 i433_3_lut_4_lut_then_4_lut (.A(state[0]), .B(ADC4_c), .C(ADC6_c), 
         .D(ADC5_c), .Z(n1312)) /* synthesis lut_function=(A (C+(D))+!A (B)) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(160[17] 249[24])
    defparam i433_3_lut_4_lut_then_4_lut.init = 16'heee4;
    VLO i1 (.Z(GND_net));
    LUT4 i1013_3_lut (.A(timer7800[23]), .B(timer7800[10]), .C(SPEED1_c), 
         .Z(n1213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1013_3_lut.init = 16'hcaca;
    LUT4 i1012_3_lut (.A(timer7800[24]), .B(timer7800[21]), .C(SPEED1_c), 
         .Z(n1212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1012_3_lut.init = 16'hcaca;
    LUT4 state_2__I_0_325_i3_3_lut_4_lut (.A(n1), .B(n1271), .C(state[2]), 
         .D(n6), .Z(n3_adj_12)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(160[17] 249[24])
    defparam state_2__I_0_325_i3_3_lut_4_lut.init = 16'hfe0e;
    LUT4 state_2__bdd_3_lut_1049 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(DSP_CLK_enable_6)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam state_2__bdd_3_lut_1049.init = 16'hfefe;
    LUT4 ADC5_c_bdd_2_lut (.A(ADC6_c), .B(LED3_N_175), .Z(n1270)) /* synthesis lut_function=(A+(B)) */ ;
    defparam ADC5_c_bdd_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_rep_14_3_lut_3_lut (.A(LED3_N_175), .B(ADC6_c), .C(ADC5_c), 
         .Z(n1272)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(324[23:41])
    defparam i2_2_lut_rep_14_3_lut_3_lut.init = 16'heaea;
    LUT4 i1_2_lut_3_lut (.A(ADC6_c), .B(LED3_N_175), .C(ADC5_c), .Z(n770)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(37[5:9])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 state_1__bdd_3_lut (.A(state[1]), .B(state[0]), .C(state[2]), 
         .Z(DSP_CLK_enable_1)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam state_1__bdd_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut (.A(state[0]), .B(state[1]), .C(LED7_N_221), .Z(n6_adj_2)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(62[12:17])
    defparam i1_3_lut.init = 16'h5454;
    LUT4 state_2__I_0_338_i2_4_lut (.A(ADC2_c), .B(LED2_N_151), .C(state[0]), 
         .D(n1272), .Z(n2_adj_13)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam state_2__I_0_338_i2_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_13_3_lut_4_lut_4_lut_3_lut (.A(LED3_N_175), .B(ADC5_c), 
         .C(ADC6_c), .Z(n1271)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_2_lut_rep_13_3_lut_4_lut_4_lut_3_lut.init = 16'heaea;
    LUT4 i22_3_lut (.A(n9), .B(n6_adj_2), .C(state[2]), .Z(LED5_N_196)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(62[12:17])
    defparam i22_3_lut.init = 16'hcaca;
    LUT4 i23_3_lut_4_lut (.A(ADC6_c), .B(LED3_N_175), .C(state[0]), .D(ADC5_c), 
         .Z(n9)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(37[5:9])
    defparam i23_3_lut_4_lut.init = 16'h8f80;
    LUT4 ADC3_c_bdd_3_lut (.A(LED7_N_221), .B(state[0]), .C(state[1]), 
         .Z(n1265)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam ADC3_c_bdd_3_lut.init = 16'h3232;
    LUT4 ADC3_c_bdd_4_lut (.A(ADC3_c), .B(LED3_N_175), .C(state[0]), .D(state[1]), 
         .Z(n1266)) /* synthesis lut_function=(!(A (B (C (D))+!B !(D))+!A (B (D)+!B !(C (D))))) */ ;
    defparam ADC3_c_bdd_4_lut.init = 16'h3acc;
    LUT4 LED1_N_133_bdd_4_lut (.A(n1270), .B(ADC1_c), .C(state[0]), .D(state[1]), 
         .Z(n1242)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B (D)+!B (C (D))))) */ ;
    defparam LED1_N_133_bdd_4_lut.init = 16'h5caa;
    LUT4 state_2__I_0_325_i2_4_lut_3_lut (.A(ADC0_c), .B(n983), .C(state[0]), 
         .Z(n2_adj_11)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam state_2__I_0_325_i2_4_lut_3_lut.init = 16'h3a3a;
    LUT4 state_2__I_0_351_i7_4_lut (.A(n28), .B(n6), .C(state[2]), .D(n770), 
         .Z(LED6_N_208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(154[9] 400[18])
    defparam state_2__I_0_351_i7_4_lut.init = 16'hcfca;
    LUT4 i4_4_lut (.A(ADC3_c), .B(ADC4_c), .C(n770), .D(ADC1_c), .Z(n10_adj_15)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(264[20:87])
    defparam i4_4_lut.init = 16'h8000;
    PFUMX i1061 (.BLUT(n1311), .ALUT(n1312), .C0(LED3_N_175), .Z(n1313));
    LUT4 i2_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), .Z(DSP_CLK_enable_8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 state_2__I_0_338_i3_3_lut_4_lut (.A(n1276), .B(LED3_N_175), .C(state[2]), 
         .D(n6), .Z(n3_adj_14)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(160[17] 249[24])
    defparam state_2__I_0_338_i3_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i805_2_lut_3_lut (.A(LED3_N_175), .B(ADC6_c), .C(ADC5_c), .Z(n983)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i805_2_lut_3_lut.init = 16'hfefe;
    LUT4 i416_2_lut_3_lut_4_lut_3_lut (.A(LED3_N_175), .B(ADC6_c), .C(ADC5_c), 
         .Z(LED2_N_151)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i416_2_lut_3_lut_4_lut_3_lut.init = 16'h1515;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 LED3_N_175_bdd_3_lut_1054 (.A(LED3_N_175), .B(ADC5_c), .C(ADC6_c), 
         .Z(n1)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam LED3_N_175_bdd_3_lut_1054.init = 16'h1414;
    LUT4 i3_2_lut (.A(ADC0_c), .B(ADC2_c), .Z(n9_adj_16)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(264[20:87])
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i433_3_lut_4_lut_else_4_lut (.A(state[0]), .B(ADC4_c), .Z(n1311)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sj729/documents/letourneau university/senior year/mcd (ta)/adc fpga/vhdl/impl1/source/main.vhd(160[17] 249[24])
    defparam i433_3_lut_4_lut_else_4_lut.init = 16'h4444;
    PFUMX i1014 (.BLUT(n1212), .ALUT(n1213), .C0(SPEED0_c), .Z(DSP_CLK_N_232));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


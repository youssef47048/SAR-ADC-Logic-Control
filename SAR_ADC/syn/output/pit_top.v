/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Mon May  6 07:08:53 2024
/////////////////////////////////////////////////////////////


module pit_top_DW01_dec_1 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;

  INVX0 U2 ( .INP(n5), .ZN(n6) );
  INVX0 U3 ( .INP(n74), .ZN(n67) );
  INVX0 U4 ( .INP(n60), .ZN(n53) );
  INVX0 U5 ( .INP(n48), .ZN(n41) );
  INVX0 U6 ( .INP(n87), .ZN(n82) );
  INVX0 U7 ( .INP(n36), .ZN(n29) );
  NAND2X1 U8 ( .IN1(n78), .IN2(n79), .QN(n77) );
  INVX0 U9 ( .INP(n80), .ZN(n78) );
  NAND2X1 U10 ( .IN1(n20), .IN2(n17), .QN(n14) );
  INVX0 U11 ( .INP(n15), .ZN(n20) );
  INVX0 U12 ( .INP(n31), .ZN(n23) );
  NOR2X0 U13 ( .IN1(A[7]), .IN2(A[6]), .QN(n97) );
  NOR2X0 U14 ( .IN1(A[5]), .IN2(A[4]), .QN(n96) );
  NOR2X0 U15 ( .IN1(A[3]), .IN2(A[2]), .QN(n95) );
  NAND2X1 U16 ( .IN1(n66), .IN2(n67), .QN(n60) );
  NAND2X1 U17 ( .IN1(n52), .IN2(n53), .QN(n48) );
  NAND2X1 U18 ( .IN1(n40), .IN2(n41), .QN(n36) );
  NAND2X1 U19 ( .IN1(n91), .IN2(n6), .QN(n87) );
  NAND2X1 U20 ( .IN1(n81), .IN2(n82), .QN(n74) );
  NOR2X0 U21 ( .IN1(A[1]), .IN2(A[0]), .QN(n94) );
  XNOR2X1 U22 ( .IN1(A[31]), .IN2(n27), .Q(SUM[31]) );
  NAND2X1 U23 ( .IN1(n34), .IN2(n29), .QN(n30) );
  NOR2X0 U24 ( .IN1(A[29]), .IN2(A[28]), .QN(n34) );
  XNOR2X1 U25 ( .IN1(A[30]), .IN2(n30), .Q(SUM[30]) );
  NAND2X1 U26 ( .IN1(n29), .IN2(n37), .QN(n33) );
  INVX0 U27 ( .INP(A[28]), .ZN(n37) );
  NAND2X1 U28 ( .IN1(n30), .IN2(n32), .QN(SUM[29]) );
  NAND2X1 U29 ( .IN1(A[29]), .IN2(n33), .QN(n32) );
  NAND2X1 U30 ( .IN1(n46), .IN2(n41), .QN(n43) );
  NOR2X0 U31 ( .IN1(A[25]), .IN2(A[24]), .QN(n46) );
  OR2X1 U32 ( .IN1(n43), .IN2(A[26]), .Q(n39) );
  NAND2X1 U33 ( .IN1(n36), .IN2(n38), .QN(SUM[27]) );
  NAND2X1 U34 ( .IN1(A[27]), .IN2(n39), .QN(n38) );
  NAND2X1 U35 ( .IN1(n33), .IN2(n35), .QN(SUM[28]) );
  NAND2X1 U36 ( .IN1(A[28]), .IN2(n36), .QN(n35) );
  NAND2X1 U37 ( .IN1(n39), .IN2(n42), .QN(SUM[26]) );
  NAND2X1 U38 ( .IN1(A[26]), .IN2(n43), .QN(n42) );
  NAND2X1 U39 ( .IN1(n41), .IN2(n49), .QN(n45) );
  INVX0 U40 ( .INP(A[24]), .ZN(n49) );
  NAND2X1 U41 ( .IN1(n43), .IN2(n44), .QN(SUM[25]) );
  NAND2X1 U42 ( .IN1(A[25]), .IN2(n45), .QN(n44) );
  NAND2X1 U43 ( .IN1(n58), .IN2(n53), .QN(n55) );
  NOR2X0 U44 ( .IN1(A[21]), .IN2(A[20]), .QN(n58) );
  OR2X1 U45 ( .IN1(n55), .IN2(A[22]), .Q(n51) );
  NAND2X1 U46 ( .IN1(n48), .IN2(n50), .QN(SUM[23]) );
  NAND2X1 U47 ( .IN1(A[23]), .IN2(n51), .QN(n50) );
  NAND2X1 U48 ( .IN1(n45), .IN2(n47), .QN(SUM[24]) );
  NAND2X1 U49 ( .IN1(A[24]), .IN2(n48), .QN(n47) );
  NAND2X1 U50 ( .IN1(n51), .IN2(n54), .QN(SUM[22]) );
  NAND2X1 U51 ( .IN1(A[22]), .IN2(n55), .QN(n54) );
  NAND2X1 U52 ( .IN1(n53), .IN2(n61), .QN(n57) );
  INVX0 U53 ( .INP(A[20]), .ZN(n61) );
  NAND2X1 U54 ( .IN1(n55), .IN2(n56), .QN(SUM[21]) );
  NAND2X1 U55 ( .IN1(A[21]), .IN2(n57), .QN(n56) );
  NAND2X1 U56 ( .IN1(n72), .IN2(n67), .QN(n69) );
  NOR2X0 U57 ( .IN1(A[17]), .IN2(A[16]), .QN(n72) );
  OR2X1 U58 ( .IN1(n69), .IN2(A[18]), .Q(n65) );
  NAND2X1 U59 ( .IN1(n60), .IN2(n64), .QN(SUM[19]) );
  NAND2X1 U60 ( .IN1(A[19]), .IN2(n65), .QN(n64) );
  NAND2X1 U61 ( .IN1(n57), .IN2(n59), .QN(SUM[20]) );
  NAND2X1 U62 ( .IN1(A[20]), .IN2(n60), .QN(n59) );
  NAND2X1 U63 ( .IN1(n65), .IN2(n68), .QN(SUM[18]) );
  NAND2X1 U64 ( .IN1(A[18]), .IN2(n69), .QN(n68) );
  NAND2X1 U65 ( .IN1(n15), .IN2(n21), .QN(SUM[3]) );
  NAND2X1 U66 ( .IN1(A[3]), .IN2(n22), .QN(n21) );
  NAND2X1 U67 ( .IN1(n23), .IN2(n24), .QN(n22) );
  NAND2X1 U68 ( .IN1(n31), .IN2(n62), .QN(SUM[1]) );
  NAND2X1 U69 ( .IN1(A[1]), .IN2(A[0]), .QN(n62) );
  NAND2X1 U70 ( .IN1(n74), .IN2(n76), .QN(SUM[15]) );
  NAND2X1 U71 ( .IN1(A[15]), .IN2(n77), .QN(n76) );
  NAND2X1 U72 ( .IN1(n87), .IN2(n89), .QN(SUM[11]) );
  NAND2X1 U73 ( .IN1(A[11]), .IN2(n90), .QN(n89) );
  NAND2X1 U74 ( .IN1(n5), .IN2(n8), .QN(SUM[7]) );
  NAND2X1 U75 ( .IN1(A[7]), .IN2(n9), .QN(n8) );
  NAND2X1 U76 ( .IN1(n69), .IN2(n70), .QN(SUM[17]) );
  NAND2X1 U77 ( .IN1(A[17]), .IN2(n71), .QN(n70) );
  NAND2X1 U78 ( .IN1(n71), .IN2(n73), .QN(SUM[16]) );
  NAND2X1 U79 ( .IN1(A[16]), .IN2(n74), .QN(n73) );
  NAND2X1 U80 ( .IN1(n80), .IN2(n83), .QN(SUM[13]) );
  NAND2X1 U81 ( .IN1(A[13]), .IN2(n84), .QN(n83) );
  NAND2X1 U82 ( .IN1(n84), .IN2(n86), .QN(SUM[12]) );
  NAND2X1 U83 ( .IN1(A[12]), .IN2(n87), .QN(n86) );
  NAND2X1 U84 ( .IN1(n90), .IN2(n92), .QN(SUM[10]) );
  NAND2X1 U85 ( .IN1(A[10]), .IN2(n1), .QN(n92) );
  NAND2X1 U86 ( .IN1(n1), .IN2(n2), .QN(SUM[9]) );
  NAND2X1 U87 ( .IN1(A[9]), .IN2(n3), .QN(n2) );
  NAND2X1 U88 ( .IN1(n3), .IN2(n4), .QN(SUM[8]) );
  NAND2X1 U89 ( .IN1(n12), .IN2(n13), .QN(SUM[5]) );
  INVX0 U90 ( .INP(n10), .ZN(n12) );
  NAND2X1 U91 ( .IN1(n14), .IN2(n19), .QN(SUM[4]) );
  NAND2X1 U92 ( .IN1(A[4]), .IN2(n15), .QN(n19) );
  NAND2X1 U93 ( .IN1(n67), .IN2(n75), .QN(n71) );
  INVX0 U94 ( .INP(A[16]), .ZN(n75) );
  NAND2X1 U95 ( .IN1(n85), .IN2(n82), .QN(n80) );
  NOR2X0 U96 ( .IN1(A[13]), .IN2(A[12]), .QN(n85) );
  NAND2X1 U97 ( .IN1(n82), .IN2(n88), .QN(n84) );
  INVX0 U98 ( .INP(A[12]), .ZN(n88) );
  NAND2X1 U99 ( .IN1(n93), .IN2(n6), .QN(n1) );
  NOR2X0 U100 ( .IN1(A[9]), .IN2(A[8]), .QN(n93) );
  OR2X1 U101 ( .IN1(n1), .IN2(A[10]), .Q(n90) );
  NAND2X1 U102 ( .IN1(n6), .IN2(n7), .QN(n3) );
  INVX0 U103 ( .INP(A[8]), .ZN(n7) );
  NAND2X1 U104 ( .IN1(n25), .IN2(n26), .QN(n15) );
  NOR2X0 U105 ( .IN1(A[3]), .IN2(A[2]), .QN(n26) );
  NOR2X0 U106 ( .IN1(A[1]), .IN2(A[0]), .QN(n25) );
  NOR2X0 U107 ( .IN1(n15), .IN2(n16), .QN(n10) );
  NAND2X1 U108 ( .IN1(n17), .IN2(n18), .QN(n16) );
  INVX0 U109 ( .INP(A[5]), .ZN(n18) );
  NAND2X1 U110 ( .IN1(n10), .IN2(n11), .QN(n9) );
  INVX0 U111 ( .INP(A[6]), .ZN(n11) );
  NAND2X1 U112 ( .IN1(A[5]), .IN2(n14), .QN(n13) );
  INVX0 U113 ( .INP(A[0]), .ZN(SUM[0]) );
  NAND2X1 U114 ( .IN1(n63), .IN2(SUM[0]), .QN(n31) );
  INVX0 U115 ( .INP(A[1]), .ZN(n63) );
  INVX0 U116 ( .INP(A[4]), .ZN(n17) );
  INVX0 U117 ( .INP(A[2]), .ZN(n24) );
  INVX0 U118 ( .INP(A[14]), .ZN(n79) );
  NAND2X1 U119 ( .IN1(A[8]), .IN2(n5), .QN(n4) );
  XOR2X1 U120 ( .IN1(A[6]), .IN2(n10), .Q(SUM[6]) );
  NAND2X1 U121 ( .IN1(n28), .IN2(n29), .QN(n27) );
  NOR3X0 U122 ( .IN1(A[28]), .IN2(A[30]), .IN3(A[29]), .QN(n28) );
  XOR2X1 U123 ( .IN1(A[2]), .IN2(n23), .Q(SUM[2]) );
  NOR4X0 U124 ( .IN1(A[27]), .IN2(A[26]), .IN3(A[25]), .IN4(A[24]), .QN(n40)
         );
  NOR4X0 U125 ( .IN1(A[23]), .IN2(A[22]), .IN3(A[21]), .IN4(A[20]), .QN(n52)
         );
  NOR4X0 U126 ( .IN1(A[19]), .IN2(A[18]), .IN3(A[17]), .IN4(A[16]), .QN(n66)
         );
  NOR4X0 U127 ( .IN1(A[15]), .IN2(A[14]), .IN3(A[13]), .IN4(A[12]), .QN(n81)
         );
  XOR2X1 U128 ( .IN1(n79), .IN2(n80), .Q(SUM[14]) );
  NOR4X0 U129 ( .IN1(A[9]), .IN2(A[11]), .IN3(A[8]), .IN4(A[10]), .QN(n91) );
  NAND4X0 U130 ( .IN1(n94), .IN2(n95), .IN3(n96), .IN4(n97), .QN(n5) );
endmodule


module pit_top ( clk, rst, comp_out, digital_out, EOC );
  output [9:0] digital_out;
  input clk, rst, comp_out;
  output EOC;
  wire   N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, n5, n8,
         n13, n17, n21, n25, n29, n32, n35, n55, n88, n89, n96, n97, n98, n99,
         n100, n101, n102, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n118, n119, n120, n122, n124, n125, n126,
         n1280, n1290, n1300, n1310, n1320, n1330, n1340, n1350, n1360, n1370,
         n1380, n1390, n1400, n1410, n1420, n1430, n1440, n1450, n1460, n1470,
         n1480, n1490, n1500, n1510, n1520, n1530, n1540, n1550, n1560, n1570,
         n1580, n1590, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265;
  wire   [2:0] state;
  wire   [3:0] i;
  wire   [9:0] sar_reg;

  DFFARX1 state_reg_0_ ( .D(n183), .CLK(clk), .RSTB(n197), .Q(state[0]), .QN(
        n188) );
  DFFARX1 state_reg_2_ ( .D(n184), .CLK(clk), .RSTB(n197), .Q(state[2]), .QN(
        n186) );
  DFFARX1 state_reg_1_ ( .D(n182), .CLK(clk), .RSTB(n196), .Q(state[1]), .QN(
        n187) );
  DFFARX1 EOC_reg ( .D(n126), .CLK(clk), .RSTB(n198), .Q(EOC), .QN(n125) );
  DFFARX1 i_reg_1_ ( .D(n181), .CLK(clk), .RSTB(n198), .Q(i[1]), .QN(n1290) );
  DFFARX1 i_reg_2_ ( .D(n180), .CLK(clk), .RSTB(n198), .Q(i[2]), .QN(n124) );
  DFFARX1 i_reg_4_ ( .D(n178), .CLK(clk), .RSTB(n198), .Q(n223), .QN(n115) );
  DFFARX1 i_reg_5_ ( .D(n177), .CLK(clk), .RSTB(n198), .Q(n222), .QN(n114) );
  DFFARX1 i_reg_6_ ( .D(n176), .CLK(clk), .RSTB(n198), .Q(n221), .QN(n113) );
  DFFARX1 i_reg_7_ ( .D(n175), .CLK(clk), .RSTB(n198), .Q(n220), .QN(n112) );
  DFFARX1 i_reg_8_ ( .D(n174), .CLK(clk), .RSTB(n198), .Q(n219), .QN(n111) );
  DFFARX1 i_reg_9_ ( .D(n173), .CLK(clk), .RSTB(n198), .Q(n218), .QN(n110) );
  DFFARX1 i_reg_10_ ( .D(n172), .CLK(clk), .RSTB(n198), .Q(n217), .QN(n108) );
  DFFARX1 i_reg_11_ ( .D(n171), .CLK(clk), .RSTB(n198), .Q(n216), .QN(n109) );
  DFFARX1 i_reg_12_ ( .D(n170), .CLK(clk), .RSTB(n199), .Q(n215), .QN(n107) );
  DFFARX1 i_reg_13_ ( .D(n169), .CLK(clk), .RSTB(n199), .Q(n214), .QN(n106) );
  DFFARX1 i_reg_14_ ( .D(n168), .CLK(clk), .RSTB(n199), .Q(n213), .QN(n105) );
  DFFARX1 i_reg_15_ ( .D(n167), .CLK(clk), .RSTB(n199), .Q(n212), .QN(n104) );
  DFFARX1 i_reg_16_ ( .D(n166), .CLK(clk), .RSTB(n199), .Q(n211), .QN(n96) );
  DFFARX1 i_reg_17_ ( .D(n165), .CLK(clk), .RSTB(n199), .Q(n210), .QN(n97) );
  DFFARX1 i_reg_18_ ( .D(n164), .CLK(clk), .RSTB(n198), .Q(n209), .QN(n98) );
  DFFARX1 i_reg_19_ ( .D(n163), .CLK(clk), .RSTB(n199), .Q(n208), .QN(n99) );
  DFFARX1 i_reg_20_ ( .D(n162), .CLK(clk), .RSTB(n199), .Q(n207), .QN(n100) );
  DFFARX1 i_reg_21_ ( .D(n161), .CLK(clk), .RSTB(n199), .Q(n206), .QN(n101) );
  DFFARX1 i_reg_22_ ( .D(n160), .CLK(clk), .RSTB(n199), .Q(n205), .QN(n102) );
  DFFARX1 i_reg_23_ ( .D(n1590), .CLK(clk), .RSTB(n199), .Q(n227) );
  DFFARX1 i_reg_24_ ( .D(n1580), .CLK(clk), .RSTB(n256), .Q(n228) );
  DFFARX1 i_reg_25_ ( .D(n1570), .CLK(clk), .RSTB(n256), .Q(n229) );
  DFFARX1 i_reg_26_ ( .D(n1560), .CLK(clk), .RSTB(n256), .Q(n204), .QN(n122)
         );
  DFFARX1 i_reg_27_ ( .D(n1550), .CLK(clk), .RSTB(n256), .Q(n203), .QN(n120)
         );
  DFFARX1 i_reg_28_ ( .D(n1540), .CLK(clk), .RSTB(n256), .Q(n202), .QN(n119)
         );
  DFFARX1 i_reg_29_ ( .D(n1530), .CLK(clk), .RSTB(n256), .Q(n201), .QN(n118)
         );
  DFFARX1 i_reg_30_ ( .D(n1520), .CLK(clk), .RSTB(n199), .Q(n232) );
  DFFARX1 i_reg_31_ ( .D(n1510), .CLK(clk), .RSTB(n197), .Q(n233) );
  DFFARX1 sar_reg_reg_9_ ( .D(n1500), .CLK(clk), .RSTB(n197), .Q(sar_reg[9])
         );
  DFFARX1 digital_out_reg_9_ ( .D(n1490), .CLK(clk), .RSTB(n196), .Q(
        digital_out[9]) );
  DFFARX1 sar_reg_reg_8_ ( .D(n1480), .CLK(clk), .RSTB(n197), .Q(sar_reg[8])
         );
  DFFARX1 digital_out_reg_8_ ( .D(n1470), .CLK(clk), .RSTB(n196), .Q(
        digital_out[8]) );
  DFFARX1 sar_reg_reg_7_ ( .D(n1460), .CLK(clk), .RSTB(n196), .Q(sar_reg[7])
         );
  DFFARX1 digital_out_reg_7_ ( .D(n1450), .CLK(clk), .RSTB(n196), .Q(
        digital_out[7]) );
  DFFARX1 sar_reg_reg_6_ ( .D(n1440), .CLK(clk), .RSTB(n196), .Q(sar_reg[6])
         );
  DFFARX1 digital_out_reg_6_ ( .D(n1430), .CLK(clk), .RSTB(n196), .Q(
        digital_out[6]) );
  DFFARX1 sar_reg_reg_5_ ( .D(n1420), .CLK(clk), .RSTB(n196), .Q(sar_reg[5])
         );
  DFFARX1 digital_out_reg_5_ ( .D(n1410), .CLK(clk), .RSTB(n196), .Q(
        digital_out[5]) );
  DFFARX1 sar_reg_reg_4_ ( .D(n1400), .CLK(clk), .RSTB(n196), .Q(sar_reg[4])
         );
  DFFARX1 digital_out_reg_4_ ( .D(n1390), .CLK(clk), .RSTB(n196), .Q(
        digital_out[4]) );
  DFFARX1 sar_reg_reg_3_ ( .D(n1380), .CLK(clk), .RSTB(n196), .Q(sar_reg[3])
         );
  DFFARX1 digital_out_reg_3_ ( .D(n1370), .CLK(clk), .RSTB(n197), .Q(
        digital_out[3]) );
  DFFARX1 sar_reg_reg_2_ ( .D(n1360), .CLK(clk), .RSTB(n197), .Q(sar_reg[2])
         );
  DFFARX1 digital_out_reg_2_ ( .D(n1350), .CLK(clk), .RSTB(n197), .Q(
        digital_out[2]) );
  DFFARX1 sar_reg_reg_1_ ( .D(n1340), .CLK(clk), .RSTB(n197), .Q(sar_reg[1])
         );
  DFFARX1 digital_out_reg_1_ ( .D(n1330), .CLK(clk), .RSTB(n197), .Q(
        digital_out[1]) );
  DFFARX1 sar_reg_reg_0_ ( .D(n1320), .CLK(clk), .RSTB(n197), .Q(sar_reg[0])
         );
  DFFARX1 digital_out_reg_0_ ( .D(n1310), .CLK(clk), .RSTB(n197), .Q(
        digital_out[0]) );
  AO22X1 U7 ( .IN1(sar_reg[0]), .IN2(n265), .IN3(n5), .IN4(digital_out[0]), 
        .Q(n1310) );
  AO22X1 U8 ( .IN1(n255), .IN2(n8), .IN3(n264), .IN4(sar_reg[0]), .Q(n1320) );
  AO22X1 U12 ( .IN1(sar_reg[1]), .IN2(n265), .IN3(n5), .IN4(digital_out[1]), 
        .Q(n1330) );
  AO22X1 U13 ( .IN1(n255), .IN2(n13), .IN3(n263), .IN4(sar_reg[1]), .Q(n1340)
         );
  AO22X1 U17 ( .IN1(sar_reg[2]), .IN2(n265), .IN3(n5), .IN4(digital_out[2]), 
        .Q(n1350) );
  AO22X1 U18 ( .IN1(n255), .IN2(n17), .IN3(n262), .IN4(sar_reg[2]), .Q(n1360)
         );
  AO22X1 U22 ( .IN1(sar_reg[3]), .IN2(n265), .IN3(n5), .IN4(digital_out[3]), 
        .Q(n1370) );
  AO22X1 U23 ( .IN1(n255), .IN2(n21), .IN3(n261), .IN4(sar_reg[3]), .Q(n1380)
         );
  AO22X1 U28 ( .IN1(sar_reg[4]), .IN2(n265), .IN3(n5), .IN4(digital_out[4]), 
        .Q(n1390) );
  AO22X1 U29 ( .IN1(n255), .IN2(n25), .IN3(n260), .IN4(sar_reg[4]), .Q(n1400)
         );
  AO22X1 U33 ( .IN1(sar_reg[5]), .IN2(n265), .IN3(n5), .IN4(digital_out[5]), 
        .Q(n1410) );
  AO22X1 U34 ( .IN1(n255), .IN2(n29), .IN3(n259), .IN4(sar_reg[5]), .Q(n1420)
         );
  AO22X1 U38 ( .IN1(sar_reg[6]), .IN2(n265), .IN3(n5), .IN4(digital_out[6]), 
        .Q(n1430) );
  AO22X1 U39 ( .IN1(n255), .IN2(n32), .IN3(n258), .IN4(sar_reg[6]), .Q(n1440)
         );
  AO22X1 U43 ( .IN1(sar_reg[7]), .IN2(n265), .IN3(n5), .IN4(digital_out[7]), 
        .Q(n1450) );
  AO22X1 U44 ( .IN1(n255), .IN2(n35), .IN3(n257), .IN4(sar_reg[7]), .Q(n1460)
         );
  AO22X1 U49 ( .IN1(sar_reg[8]), .IN2(n265), .IN3(n5), .IN4(digital_out[8]), 
        .Q(n1470) );
  AO22X1 U53 ( .IN1(sar_reg[9]), .IN2(n265), .IN3(n5), .IN4(digital_out[9]), 
        .Q(n1490) );
  NAND3X0 U133 ( .IN1(n55), .IN2(n88), .IN3(n89), .QN(n182) );
  NAND3X0 U140 ( .IN1(n188), .IN2(n187), .IN3(state[2]), .QN(n5) );
  NAND3X0 U141 ( .IN1(n188), .IN2(n186), .IN3(state[1]), .QN(n88) );
  pit_top_DW01_dec_1 sub_47 ( .A({n233, n232, n201, n202, n203, n204, n229, 
        n228, n227, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, 
        n215, n216, n217, n218, n219, n220, n221, n222, n223, i}), .SUM({N159, 
        N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, 
        N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128}) );
  DFFASX1 i_reg_3_ ( .D(n179), .CLK(clk), .SETB(n256), .Q(i[3]), .QN(n1280) );
  DFFASX1 i_reg_0_ ( .D(n185), .CLK(clk), .SETB(n256), .Q(i[0]), .QN(n1300) );
  INVX0 U153 ( .INP(n200), .ZN(n193) );
  INVX0 U154 ( .INP(n225), .ZN(n254) );
  INVX0 U155 ( .INP(n200), .ZN(n194) );
  INVX0 U156 ( .INP(n231), .ZN(n195) );
  INVX0 U157 ( .INP(n251), .ZN(n253) );
  INVX0 U158 ( .INP(rst), .ZN(n199) );
  INVX0 U159 ( .INP(rst), .ZN(n198) );
  INVX0 U160 ( .INP(rst), .ZN(n196) );
  INVX0 U161 ( .INP(rst), .ZN(n197) );
  AND3X1 U162 ( .IN1(n242), .IN2(n241), .IN3(n240), .Q(n189) );
  INVX0 U163 ( .INP(n231), .ZN(n224) );
  INVX0 U164 ( .INP(n5), .ZN(n265) );
  INVX0 U165 ( .INP(n55), .ZN(n255) );
  AND3X1 U166 ( .IN1(n124), .IN2(n1280), .IN3(n189), .Q(n190) );
  INVX0 U167 ( .INP(n8), .ZN(n264) );
  INVX0 U168 ( .INP(n17), .ZN(n262) );
  INVX0 U169 ( .INP(n13), .ZN(n263) );
  INVX0 U170 ( .INP(n21), .ZN(n261) );
  AND3X1 U171 ( .IN1(n189), .IN2(n1280), .IN3(i[2]), .Q(n191) );
  INVX0 U172 ( .INP(n25), .ZN(n260) );
  INVX0 U173 ( .INP(n32), .ZN(n258) );
  INVX0 U174 ( .INP(n29), .ZN(n259) );
  INVX0 U175 ( .INP(n35), .ZN(n257) );
  NAND2X1 U176 ( .IN1(n254), .IN2(state[1]), .QN(n89) );
  NAND2X1 U177 ( .IN1(n125), .IN2(n5), .QN(n126) );
  AND2X1 U178 ( .IN1(n1300), .IN2(n1290), .Q(n192) );
  INVX0 U179 ( .INP(rst), .ZN(n256) );
  NAND3X0 U180 ( .IN1(state[0]), .IN2(state[1]), .IN3(n186), .QN(n231) );
  NAND3X0 U181 ( .IN1(n187), .IN2(n188), .IN3(n186), .QN(n251) );
  NAND2X1 U182 ( .IN1(n231), .IN2(n251), .QN(n200) );
  AO22X1 U183 ( .IN1(n194), .IN2(n232), .IN3(N158), .IN4(n195), .Q(n1520) );
  AO22X1 U184 ( .IN1(n193), .IN2(n201), .IN3(N157), .IN4(n224), .Q(n1530) );
  AO22X1 U185 ( .IN1(n193), .IN2(n202), .IN3(N156), .IN4(n224), .Q(n1540) );
  AO22X1 U186 ( .IN1(n193), .IN2(n203), .IN3(N155), .IN4(n224), .Q(n1550) );
  AO22X1 U187 ( .IN1(n193), .IN2(n204), .IN3(N154), .IN4(n224), .Q(n1560) );
  AO22X1 U188 ( .IN1(n193), .IN2(n229), .IN3(N153), .IN4(n224), .Q(n1570) );
  AO22X1 U189 ( .IN1(n193), .IN2(n228), .IN3(N152), .IN4(n224), .Q(n1580) );
  AO22X1 U190 ( .IN1(n193), .IN2(n227), .IN3(N151), .IN4(n224), .Q(n1590) );
  AO22X1 U191 ( .IN1(n193), .IN2(n205), .IN3(N150), .IN4(n224), .Q(n160) );
  AO22X1 U192 ( .IN1(n193), .IN2(n206), .IN3(N149), .IN4(n224), .Q(n161) );
  AO22X1 U193 ( .IN1(n193), .IN2(n207), .IN3(N148), .IN4(n224), .Q(n162) );
  AO22X1 U194 ( .IN1(n193), .IN2(n208), .IN3(N147), .IN4(n224), .Q(n163) );
  AO22X1 U195 ( .IN1(n193), .IN2(n209), .IN3(N146), .IN4(n224), .Q(n164) );
  AO22X1 U196 ( .IN1(n194), .IN2(n210), .IN3(N145), .IN4(n195), .Q(n165) );
  AO22X1 U197 ( .IN1(n194), .IN2(n211), .IN3(N144), .IN4(n195), .Q(n166) );
  AO22X1 U198 ( .IN1(n194), .IN2(n212), .IN3(N143), .IN4(n195), .Q(n167) );
  AO22X1 U199 ( .IN1(n194), .IN2(n213), .IN3(N142), .IN4(n195), .Q(n168) );
  AO22X1 U200 ( .IN1(n194), .IN2(n214), .IN3(N141), .IN4(n195), .Q(n169) );
  AO22X1 U201 ( .IN1(n194), .IN2(n215), .IN3(N140), .IN4(n195), .Q(n170) );
  AO22X1 U202 ( .IN1(n194), .IN2(n216), .IN3(N139), .IN4(n195), .Q(n171) );
  AO22X1 U203 ( .IN1(n194), .IN2(n217), .IN3(N138), .IN4(n195), .Q(n172) );
  AO22X1 U204 ( .IN1(n194), .IN2(n218), .IN3(N137), .IN4(n195), .Q(n173) );
  AO22X1 U205 ( .IN1(n194), .IN2(n219), .IN3(N136), .IN4(n195), .Q(n174) );
  AO22X1 U206 ( .IN1(n194), .IN2(n220), .IN3(N135), .IN4(n195), .Q(n175) );
  AO22X1 U207 ( .IN1(n194), .IN2(n221), .IN3(N134), .IN4(n195), .Q(n176) );
  AO22X1 U208 ( .IN1(n194), .IN2(n222), .IN3(N133), .IN4(n195), .Q(n177) );
  AO22X1 U209 ( .IN1(n194), .IN2(n223), .IN3(N132), .IN4(n195), .Q(n178) );
  AO221X1 U210 ( .IN1(n193), .IN2(i[3]), .IN3(N131), .IN4(n224), .IN5(n253), 
        .Q(n179) );
  AO22X1 U211 ( .IN1(n194), .IN2(i[2]), .IN3(N130), .IN4(n195), .Q(n180) );
  AO22X1 U212 ( .IN1(n194), .IN2(i[1]), .IN3(N129), .IN4(n195), .Q(n181) );
  AO221X1 U213 ( .IN1(n193), .IN2(i[0]), .IN3(N128), .IN4(n224), .IN5(n253), 
        .Q(n185) );
  AO22X1 U214 ( .IN1(n193), .IN2(n233), .IN3(N159), .IN4(n195), .Q(n1510) );
  NAND3X0 U215 ( .IN1(state[0]), .IN2(n187), .IN3(n186), .QN(n55) );
  NAND4X0 U216 ( .IN1(n88), .IN2(n5), .IN3(n193), .IN4(n55), .QN(n225) );
  AO21X1 U217 ( .IN1(n233), .IN2(n195), .IN3(n254), .Q(n184) );
  OA22X1 U218 ( .IN1(n188), .IN2(n225), .IN3(n233), .IN4(n231), .Q(n226) );
  NAND3X0 U219 ( .IN1(n88), .IN2(n251), .IN3(n226), .QN(n183) );
  NAND4X0 U220 ( .IN1(n99), .IN2(n100), .IN3(n101), .IN4(n102), .QN(n230) );
  NOR4X0 U221 ( .IN1(n230), .IN2(n229), .IN3(n228), .IN4(n227), .QN(n242) );
  NAND4X0 U222 ( .IN1(n122), .IN2(n120), .IN3(n119), .IN4(n118), .QN(n235) );
  OA21X1 U223 ( .IN1(comp_out), .IN2(n231), .IN3(n55), .Q(n234) );
  NOR4X0 U224 ( .IN1(n235), .IN2(n234), .IN3(n233), .IN4(n232), .QN(n241) );
  NAND3X0 U225 ( .IN1(n96), .IN2(n97), .IN3(n98), .QN(n239) );
  NAND4X0 U226 ( .IN1(n107), .IN2(n106), .IN3(n105), .IN4(n104), .QN(n238) );
  NAND4X0 U227 ( .IN1(n111), .IN2(n110), .IN3(n108), .IN4(n109), .QN(n237) );
  NAND4X0 U228 ( .IN1(n115), .IN2(n114), .IN3(n113), .IN4(n112), .QN(n236) );
  NOR4X0 U229 ( .IN1(n239), .IN2(n238), .IN3(n237), .IN4(n236), .QN(n240) );
  NAND4X0 U230 ( .IN1(n124), .IN2(n1290), .IN3(n189), .IN4(i[3]), .QN(n244) );
  OA21X1 U231 ( .IN1(n1300), .IN2(n244), .IN3(n251), .Q(n243) );
  MUX21X1 U232 ( .IN1(n255), .IN2(sar_reg[9]), .S(n243), .Q(n1500) );
  OA21X1 U233 ( .IN1(i[0]), .IN2(n244), .IN3(n251), .Q(n245) );
  MUX21X1 U234 ( .IN1(n255), .IN2(sar_reg[8]), .S(n245), .Q(n1480) );
  NAND3X0 U235 ( .IN1(n191), .IN2(i[0]), .IN3(i[1]), .QN(n246) );
  NAND2X1 U236 ( .IN1(n246), .IN2(n251), .QN(n35) );
  NAND3X0 U237 ( .IN1(n191), .IN2(n1300), .IN3(i[1]), .QN(n247) );
  NAND2X1 U238 ( .IN1(n247), .IN2(n251), .QN(n32) );
  NAND3X0 U239 ( .IN1(n191), .IN2(n1290), .IN3(i[0]), .QN(n248) );
  NAND2X1 U240 ( .IN1(n248), .IN2(n251), .QN(n29) );
  AO21X1 U241 ( .IN1(n191), .IN2(n192), .IN3(n253), .Q(n25) );
  NAND3X0 U242 ( .IN1(n190), .IN2(i[0]), .IN3(i[1]), .QN(n249) );
  NAND2X1 U243 ( .IN1(n249), .IN2(n251), .QN(n21) );
  NAND3X0 U244 ( .IN1(n190), .IN2(n1300), .IN3(i[1]), .QN(n250) );
  NAND2X1 U245 ( .IN1(n250), .IN2(n251), .QN(n17) );
  NAND3X0 U246 ( .IN1(n190), .IN2(n1290), .IN3(i[0]), .QN(n252) );
  NAND2X1 U247 ( .IN1(n252), .IN2(n251), .QN(n13) );
  AO21X1 U248 ( .IN1(n192), .IN2(n190), .IN3(n253), .Q(n8) );
endmodule


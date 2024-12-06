************************************************************************
* auCdl Netlist:
* 
* Library Name:  bridge_soc_top
* Top Cell Name: bridge_soc_top
* View Name:     schematic
* Netlisted on:  Dec  5 22:38:22 2024
************************************************************************

.INCLUDE  /research/ece/lnis-teaching/Designkits/tsmc180nm/pdk/tsmc18/../Calibre/lvs/source.added
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

*.GLOBAL VDD!

*.PIN VDD!

************************************************************************
* Library Name: SC_LIB
* Cell Name:    AND2X1
* View Name:    schematic
************************************************************************

.SUBCKT AND2X1 A B VDD VSS Z
*.PININFO A:I B:I Z:O VDD:B VSS:B
MM4 Z net4 VSS VSS N l=180.0n w=220.0n m=1
MM1 net14 B VSS VSS N l=180.0n w=440.0n m=1
MM0 net4 A net14 VSS N l=180.0n w=440.0n m=1
MM5 Z net4 VDD VDD P l=180.0n w=440.0n m=1
MM3 net4 A VDD VDD P l=180.0n w=440.0n m=1
MM2 net4 B VDD VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    MUX2X1
* View Name:    schematic
************************************************************************

.SUBCKT MUX2X1 A B S VDD VSS Z
*.PININFO A:I B:I S:I Z:O VDD:B VSS:B
MM13 SB S VSS VSS N l=180.0n w=440.0n m=1
MM0 Z net2 VSS VSS N l=180.0n w=440.0n m=1
MM7 net2 SB net21 VSS N l=180.0n w=440.0n m=1
MM8 net21 A VSS VSS N l=180.0n w=440.0n m=1
MM9 net22 B VSS VSS N l=180.0n w=440.0n m=1
MM11 net2 S net22 VSS N l=180.0n w=440.0n m=1
MM14 SB S VDD VDD P l=180.0n w=440.0n m=1
MM1 Z net2 VDD VDD P l=180.0n w=440.0n m=1
MM6 net20 A VDD VDD P l=180.0n w=440.0n m=1
MM5 net2 S net20 VDD P l=180.0n w=440.0n m=1
MM10 net23 B VDD VDD P l=180.0n w=440.0n m=1
MM12 net2 SB net23 VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    NOR2X1
* View Name:    schematic
************************************************************************

.SUBCKT NOR2X1 A B VDD VSS Z
*.PININFO A:I B:I Z:O VDD:B VSS:B
MM7 Z A VSS VSS N l=180.0n w=220.0n m=1
MM4 Z B VSS VSS N l=180.0n w=220.0n m=1
MM6 net9 A VDD VDD P l=180.0n w=880.0n m=1
MM5 Z B net9 VDD P l=180.0n w=880.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    NAND2X1
* View Name:    schematic
************************************************************************

.SUBCKT NAND2X1 A B VDD VSS Z
*.PININFO A:I B:I Z:O VDD:B VSS:B
MM1 net9 B VSS VSS N l=180.0n w=440.0n m=1
MM0 Z A net9 VSS N l=180.0n w=440.0n m=1
MM3 Z A VDD VDD P l=180.0n w=440.0n m=1
MM2 Z B VDD VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    OR2X1
* View Name:    schematic
************************************************************************

.SUBCKT OR2X1 A B VDD VSS Z
*.PININFO A:I B:I Z:O VDD:B VSS:B
MM7 net8 A VSS VSS N l=180.0n w=220.0n m=1
MM4 net8 B VSS VSS N l=180.0n w=220.0n m=1
MM0 Z net8 VSS VSS N l=180.0n w=220.0n m=1
MM6 net12 A VDD VDD P l=180.0n w=880.0n m=1
MM5 net8 B net12 VDD P l=180.0n w=880.0n m=1
MM1 Z net8 VDD VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    INVX1
* View Name:    schematic
************************************************************************

.SUBCKT INVX1 A VDD VSS Z
*.PININFO A:I Z:O VDD:B VSS:B
MM2 Z A VSS VSS N l=180.0n w=220.0n m=1
MM0 Z A VDD VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    INVX2
* View Name:    schematic
************************************************************************

.SUBCKT INVX2 A VDD VSS Z
*.PININFO A:I Z:O VDD:B VSS:B
MM0 Z A VSS VSS N l=180.0n w=440.0n m=1
MM1 Z A VDD VDD P l=180.0n w=880.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    INVX8
* View Name:    schematic
************************************************************************

.SUBCKT INVX8 A VDD VSS Z
*.PININFO A:I Z:O VDD:B VSS:B
MM0 Z A VSS VSS N l=180.0n w=1.76u m=1
MM1 Z A VDD VDD P l=180.0n w=3.52u m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    XOR2X1
* View Name:    schematic
************************************************************************

.SUBCKT XOR2X1 A B VDD VSS Z
*.PININFO A:I B:I Z:O VDD:B VSS:B
MM11 net3 A B VSS N l=180.0n w=440.0n m=1
MM10 net3 AB BB VSS N l=180.0n w=440.0n m=1
MM12 BB B VSS VSS N l=180.0n w=440.0n m=1
MM13 Z net3 VSS VSS N l=180.0n w=440.0n m=1
MM0 AB A VSS VSS N l=180.0n w=440.0n m=1
MM3 B AB net3 VDD P l=180.0n w=440.0n m=1
MM2 BB A net3 VDD P l=180.0n w=440.0n m=1
MM1 AB A VDD VDD P l=180.0n w=440.0n m=1
MM4 BB B VDD VDD P l=180.0n w=440.0n m=1
MM5 Z net3 VDD VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    NAND3X1
* View Name:    schematic
************************************************************************

.SUBCKT NAND3X1 A B C VDD VSS Z
*.PININFO A:I B:I C:I Z:O VDD:B VSS:B
MM5 net10 C VSS VSS N l=180.0n w=660.0n m=1
MM1 net13 B net10 VSS N l=180.0n w=660.0n m=1
MM0 Z A net13 VSS N l=180.0n w=660.0n m=1
MM4 Z C VDD VDD P l=180.0n w=440.0n m=1
MM3 Z A VDD VDD P l=180.0n w=440.0n m=1
MM2 Z B VDD VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    INVX4
* View Name:    schematic
************************************************************************

.SUBCKT INVX4 A VDD VSS Z
*.PININFO A:I Z:O VDD:B VSS:B
MM0 Z A VSS VSS N l=180.0n w=880.0n m=1
MM1 Z A VDD VDD P l=180.0n w=1.76u m=1
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    DFFQSRX1
* View Name:    schematic
************************************************************************

.SUBCKT DFFQSRX1 CLK D Q RESETB SETB VDD VSS
*.PININFO CLK:I D:I RESETB:I SETB:I Q:O VDD:B VSS:B
XI16 net18 RESETB VDD VSS net31 / NAND2X1
XI11 CLK VDD VSS CLKB / INVX1
XI19 SETB VDD VSS SET / INVX1
XI14 SET net10 VDD VSS net15 / OR2X1
MM43 net18 CLKB net020 VSS N l=180.0n w=220.0n m=1
MM41 net4 CLK net012 VSS N l=180.0n w=220.0n m=1
MM32 Q net31 VSS VSS N l=180.0n w=220.0n m=1
MM34 net27 net31 VSS VSS N l=180.0n w=220.0n m=1
MM4 net20 SET VSS VSS N l=180.0n w=220.0n m=1
MM37 net012 net15 net65 VSS N l=180.0n w=440.0n m=1
MM7 net20 net27 VSS VSS N l=180.0n w=220.0n m=1
MM38 net020 net20 VSS VSS N l=180.0n w=220.0n m=1
MM28 net10 net4 VSS VSS N l=180.0n w=220.0n m=1
MM25 net15 CLK net18 VSS N l=180.0n w=220.0n m=1
MM1 net65 RESETB VSS VSS N l=180.0n w=440.0n m=1
MM0 net1 CLKB net4 VSS N l=180.0n w=220.0n m=1
MM10 net1 D VSS VSS N l=180.0n w=220.0n m=1
MM44 net020 CLK net18 VDD P l=180.0n w=440.0n m=1
MM42 net012 CLKB net4 VDD P l=180.0n w=440.0n m=1
MM31 Q net31 VDD VDD P l=180.0n w=440.0n m=1
MM33 net27 net31 VDD VDD P l=180.0n w=440.0n m=1
MM6 net64 net27 VDD VDD P l=180.0n w=880.0n m=1
MM5 net20 SET net64 VDD P l=180.0n w=880.0n m=1
MM39 net020 net20 VDD VDD P l=180.0n w=440.0n m=1
MM3 net012 net15 VDD VDD P l=180.0n w=440.0n m=1
MM36 net012 RESETB VDD VDD P l=180.0n w=440.0n m=1
MM11 net1 D VDD VDD P l=180.0n w=440.0n m=1
MM27 net10 net4 VDD VDD P l=180.0n w=440.0n m=1
MM2 net4 CLK net1 VDD P l=180.0n w=440.0n m=1
MM26 net18 CLKB net15 VDD P l=180.0n w=440.0n m=1
.ENDS

************************************************************************
* Library Name: PADS_LIB
* Cell Name:    pad_in
* View Name:    schematic
************************************************************************

.SUBCKT pad_in DataIn VDD VSS pad
*.PININFO DataIn:O VDD:B VSS:B pad:B
MM42 net173 OE net172 VSS N l=350.0n w=36.0u m=1
MM7 pad net172 VSS VSS N l=350.0n w=400.0000u m=1
MM11 OEB VSS VSS VSS N l=350.0n w=9u m=1
MM6 net172 OEB VSS VSS N l=350.0n w=45.0u m=1
MM4 OE OEB VSS VSS N l=350.0n w=9u m=1
MM5 net172 VSS VSS VSS N l=350.0n w=45.0u m=1
MM41 net027 pad VSS VSS N l=350.0n w=54.0u m=1
MM40 DataIn net027 VSS VSS N l=350.0n w=54.0u m=1
MM18 net173 OE VDD VDD P l=350.0n w=78.0u m=1
MM19 pad net173 VDD VDD P l=350.0n w=400.0000u m=1
MM15 net173 VSS VDD VDD P l=350.0n w=78.0u m=1
MM38 net027 pad VDD VDD P l=350.0n w=93.6u m=1
MM39 DataIn net027 VDD VDD P l=350.0n w=93.6u m=1
MM16 net172 OEB net173 VDD P l=350.0n w=62.4u m=1
MM12 OE OEB VDD VDD P l=350.0n w=15.6u m=1
MM0 OEB VSS VDD VDD P l=350.0n w=15.6u m=1
.ENDS

************************************************************************
* Library Name: PADS_LIB
* Cell Name:    pad_out
* View Name:    schematic
************************************************************************

.SUBCKT pad_out DataOut VDD VSS pad
*.PININFO DataOut:I VDD:B VSS:B pad:B
MM21 net090 OE net089 VSS N l=350.0n w=36.0u m=1
MM13 pad net089 VSS VSS N l=350.0n w=400.0000u m=1
MM10 OEB VDD VSS VSS N l=350.0n w=9u m=1
MM9 net089 OEB VSS VSS N l=350.0n w=45.0u m=1
MM8 OE OEB VSS VSS N l=350.0n w=9u m=1
MM2 net096 pad VSS VSS N l=350.0n w=54.0u m=1
MM1 net099 net096 VSS VSS N l=350.0n w=54.0u m=1
MM3 net089 DataOut VSS VSS N l=350.0n w=45.0u m=1
MM26 net090 OE VDD VDD P l=350.0n w=78.0u m=1
MM25 pad net090 VDD VDD P l=350.0n w=400.0000u m=1
MM24 net090 DataOut VDD VDD P l=350.0n w=78.0u m=1
MM23 net096 pad VDD VDD P l=350.0n w=93.6u m=1
MM22 net099 net096 VDD VDD P l=350.0n w=93.6u m=1
MM20 net089 OEB net090 VDD P l=350.0n w=62.4u m=1
MM17 OE OEB VDD VDD P l=350.0n w=15.6u m=1
MM14 OEB VDD VDD VDD P l=350.0n w=15.6u m=1
.ENDS

************************************************************************
* Library Name: PADS_LIB
* Cell Name:    pad_gnd
* View Name:    schematic
************************************************************************

.SUBCKT pad_gnd VDD VSS
*.PININFO VDD:B VSS:B
DD1 VSS VDD pdio_m area=9e-10 m=1
.ENDS

************************************************************************
* Library Name: PADS_LIB
* Cell Name:    pad_vdd
* View Name:    schematic
************************************************************************

.SUBCKT pad_vdd VDD VSS
*.PININFO VDD:B VSS:B
DD0 VSS VDD ndio_m area=9e-10 m=1
.ENDS

************************************************************************
* Library Name: PADS_LIB
* Cell Name:    pad_corner
* View Name:    schematic
************************************************************************

.SUBCKT pad_corner VDD VSS
*.PININFO VDD:B VSS:B
.ENDS

************************************************************************
* Library Name: SC_LIB
* Cell Name:    ANTENNA
* View Name:    schematic
************************************************************************

.SUBCKT ANTENNA A VDD VSS
*.PININFO A:I VDD:B VSS:B
DD1 VSS A DN area=3.9e-13 m=1
.ENDS

************************************************************************
* Library Name: bridge_soc_top
* Cell Name:    bridge_soc_top
* View Name:    schematic
************************************************************************

.SUBCKT bridge_soc_top Bridge_Can_out Bridge_Serial_out Can_rx R_byte 
+ Serial_in T_byte clock reset
*.PININFO Can_rx:I R_byte:I Serial_in:I T_byte:I clock:I reset:I 
*.PININFO Bridge_Can_out:O Bridge_Serial_out:O
Xg9958__4319 n_760 n_830 VDD! VSS n_768 / AND2X1
Xg10100__6260 n_635 n_830 VDD! VSS n_741 / AND2X1
Xg10169__2398 n_378 n_830 VDD! VSS n_686 / AND2X1
Xg10468__1617 n_359 n_830 VDD! VSS n_425 / AND2X1
Xg10610__2346 n_326 soc_uart_rx_inst_state<1> VDD! VSS n_349 / AND2X1
Xg10641__1881 n_327 soc_can_index<2> VDD! VSS n_366 / AND2X1
Xg10666__4319 n_71 n_7 VDD! VSS n_311 / AND2X1
Xg10672__2802 n_47 n_100 VDD! VSS n_305 / AND2X1
Xg10739__9315 n_85 n_101 VDD! VSS n_238 / AND2X1
Xg10754__3680 n_43 n_55 VDD! VSS n_223 / AND2X1
Xg10756__2802 n_40 n_52 VDD! VSS n_221 / AND2X1
Xg10757__1705 n_53 n_59 VDD! VSS n_220 / AND2X1
Xg10758__5122 n_51 n_41 VDD! VSS n_219 / AND2X1
Xg10759__8246 n_58 n_57 VDD! VSS n_218 / AND2X1
Xg10761__6131 n_68 soc_can_index<1> VDD! VSS n_327 / AND2X1
Xg10763__5115 n_64 soc_uart_tx_inst_Status_reg<2> VDD! VSS n_324 / AND2X1
Xg10764__7482 n_65 soc_can_tx_inst_status_reg<2> VDD! VSS n_323 / AND2X1
Xg10773__6417 n_54 n_61 VDD! VSS n_209 / AND2X1
Xg10884__5115 n_20 soc_uart_tx_inst_shift_reg<9> VDD! VSS n_102 / AND2X1
Xg10924__9945 soc_uart_data_ready soc_Load_frame_datareg VDD! VSS n_62 / AND2X1
Xg10955__1666 soc_uart_rx_inst_bit_count<0> rbyte_PAD VDD! VSS n_69 / AND2X1
Xg10956__7410 soc_can_index<0> soc_uart_data_ready VDD! VSS n_68 / AND2X1
Xg10958__5477 soc_can_tx_inst_status_reg<0> soc_can_tx_inst_status_reg<1> VDD! 
+ VSS n_65 / AND2X1
Xg10959__2398 soc_uart_tx_inst_Status_reg<0> soc_uart_tx_inst_Status_reg<1> 
+ VDD! VSS n_64 / AND2X1
Xg11076 n_365 soc_can_tx_inst_status_reg<4> VDD! VSS n_847 / AND2X1
Xg11078 n_13 n_323 VDD! VSS n_849 / AND2X1
Xg11082 soc_can_tx_inst_status_reg<0> n_13 VDD! VSS n_853 / AND2X1
Xg9952__7410 n_365 n_650 soc_can_tx_inst_status_reg<4> VDD! VSS n_774 / MUX2X1
Xg9953__6417 soc_Can_rx_data_Bus<7> soc_can_rx_inst_shift_reg<67> n_688 VDD! 
+ VSS n_773 / MUX2X1
Xg9954__5477 soc_Can_rx_data_Bus<6> soc_can_rx_inst_shift_reg<66> n_688 VDD! 
+ VSS n_772 / MUX2X1
Xg9959__8428 soc_Can_rx_data_Bus<1> soc_can_rx_inst_shift_reg<61> n_688 VDD! 
+ VSS n_767 / MUX2X1
Xg9960__5526 soc_Can_rx_data_Bus<2> soc_can_rx_inst_shift_reg<62> n_688 VDD! 
+ VSS n_766 / MUX2X1
Xg9961__6783 soc_Can_rx_data_Bus<0> soc_can_rx_inst_shift_reg<60> n_688 VDD! 
+ VSS n_765 / MUX2X1
Xg9962__3680 soc_Can_rx_data_Bus<3> soc_can_rx_inst_shift_reg<63> n_688 VDD! 
+ VSS n_764 / MUX2X1
Xg9963__1617 soc_Can_rx_data_Bus<5> soc_can_rx_inst_shift_reg<65> n_688 VDD! 
+ VSS n_763 / MUX2X1
Xg9964__2802 soc_Can_rx_data_Bus<4> soc_can_rx_inst_shift_reg<64> n_688 VDD! 
+ VSS n_762 / MUX2X1
Xg10081__5122 n_367 soc_uart_tx_inst_Status_reg<3> n_104 VDD! VSS n_760 / 
+ MUX2X1
Xg10239__2802 n_15 n_217 soc_can_rx_inst_bit_count<0> VDD! VSS n_649 / MUX2X1
Xg10253__2346 n_355 soc_uart_tx_inst_Status_reg<2> n_104 VDD! VSS n_635 / 
+ MUX2X1
Xg10254__1666 soc_uart_rx_inst_shift_reg<1> soc_uart_rx_data_bus<0> n_363 VDD! 
+ VSS n_634 / MUX2X1
Xg10255__7410 soc_uart_rx_inst_shift_reg<2> soc_uart_rx_data_bus<1> n_363 VDD! 
+ VSS n_633 / MUX2X1
Xg10256__6417 soc_uart_rx_inst_shift_reg<3> soc_uart_rx_data_bus<2> n_363 VDD! 
+ VSS n_632 / MUX2X1
Xg10257__5477 soc_uart_rx_inst_shift_reg<4> soc_uart_rx_data_bus<3> n_363 VDD! 
+ VSS n_631 / MUX2X1
Xg10258__2398 soc_uart_rx_inst_shift_reg<5> soc_uart_rx_data_bus<4> n_363 VDD! 
+ VSS n_630 / MUX2X1
Xg10259__5107 soc_uart_rx_inst_shift_reg<6> soc_uart_rx_data_bus<5> n_363 VDD! 
+ VSS n_629 / MUX2X1
Xg10260__6260 soc_uart_rx_inst_shift_reg<7> soc_uart_rx_data_bus<6> n_363 VDD! 
+ VSS n_628 / MUX2X1
Xg10261__4319 soc_uart_rx_inst_shift_reg<8> soc_uart_rx_data_bus<7> n_363 VDD! 
+ VSS n_627 / MUX2X1
Xg10262__8428 soc_can_rx_inst_shift_reg<78> soc_can_rx_inst_shift_reg<79> n_15 
+ VDD! VSS n_626 / MUX2X1
Xg10263__5526 soc_can_rx_inst_shift_reg<79> soc_can_rx_inst_shift_reg<80> n_15 
+ VDD! VSS n_625 / MUX2X1
Xg10264__6783 soc_can_rx_inst_shift_reg<80> soc_can_rx_inst_shift_reg<81> n_15 
+ VDD! VSS n_624 / MUX2X1
Xg10265__3680 soc_can_rx_inst_shift_reg<81> soc_can_rx_inst_shift_reg<82> n_15 
+ VDD! VSS n_623 / MUX2X1
Xg10266__1617 soc_can_rx_inst_shift_reg<83> soc_can_rx_inst_shift_reg<84> n_15 
+ VDD! VSS n_622 / MUX2X1
Xg10267__2802 soc_can_rx_inst_shift_reg<82> soc_can_rx_inst_shift_reg<83> n_15 
+ VDD! VSS n_621 / MUX2X1
Xg10268__1705 soc_can_rx_inst_shift_reg<84> soc_can_rx_inst_shift_reg<85> n_15 
+ VDD! VSS n_620 / MUX2X1
Xg10269__5122 soc_can_rx_inst_shift_reg<85> soc_can_rx_inst_shift_reg<86> n_15 
+ VDD! VSS n_619 / MUX2X1
Xg10270__8246 soc_can_rx_inst_shift_reg<86> soc_can_rx_inst_shift_reg<87> n_15 
+ VDD! VSS n_618 / MUX2X1
Xg10271__7098 soc_can_rx_inst_shift_reg<87> soc_can_rx_inst_shift_reg<88> n_15 
+ VDD! VSS n_617 / MUX2X1
Xg10272__6131 soc_can_rx_inst_shift_reg<88> soc_can_rx_inst_shift_reg<89> n_15 
+ VDD! VSS n_616 / MUX2X1
Xg10273__1881 soc_can_rx_inst_shift_reg<89> soc_can_rx_inst_shift_reg<90> n_15 
+ VDD! VSS n_615 / MUX2X1
Xg10274__5115 soc_can_rx_inst_shift_reg<90> soc_can_rx_inst_shift_reg<91> n_15 
+ VDD! VSS n_614 / MUX2X1
Xg10275__7482 soc_can_rx_inst_shift_reg<91> soc_can_rx_inst_shift_reg<92> n_15 
+ VDD! VSS n_613 / MUX2X1
Xg10276__4733 soc_can_rx_inst_shift_reg<92> soc_can_rx_inst_shift_reg<93> n_15 
+ VDD! VSS n_612 / MUX2X1
Xg10277__6161 soc_can_rx_inst_shift_reg<93> soc_can_rx_inst_shift_reg<94> n_15 
+ VDD! VSS n_611 / MUX2X1
Xg10278__9315 soc_can_rx_inst_shift_reg<94> soc_can_rx_inst_shift_reg<95> n_15 
+ VDD! VSS n_610 / MUX2X1
Xg10279__9945 soc_can_rx_inst_shift_reg<95> soc_can_rx_inst_shift_reg<96> n_15 
+ VDD! VSS n_609 / MUX2X1
Xg10280__2883 soc_can_rx_inst_shift_reg<96> soc_can_rx_inst_shift_reg<97> n_15 
+ VDD! VSS n_608 / MUX2X1
Xg10281__2346 soc_can_rx_inst_shift_reg<60> soc_can_rx_inst_shift_reg<61> n_15 
+ VDD! VSS n_607 / MUX2X1
Xg10282__1666 soc_can_rx_inst_shift_reg<97> soc_can_rx_inst_shift_reg<98> n_15 
+ VDD! VSS n_606 / MUX2X1
Xg10283__7410 soc_can_rx_inst_shift_reg<98> soc_can_rx_inst_shift_reg<99> n_15 
+ VDD! VSS n_605 / MUX2X1
Xg10284__6417 soc_can_rx_inst_shift_reg<61> soc_can_rx_inst_shift_reg<62> n_15 
+ VDD! VSS n_604 / MUX2X1
Xg10285__5477 soc_can_rx_inst_shift_reg<99> soc_can_rx_inst_shift_reg<100> 
+ n_15 VDD! VSS n_603 / MUX2X1
Xg10286__2398 soc_can_rx_inst_shift_reg<100> soc_can_rx_inst_shift_reg<101> 
+ n_15 VDD! VSS n_602 / MUX2X1
Xg10287__5107 soc_can_rx_inst_shift_reg<62> soc_can_rx_inst_shift_reg<63> n_15 
+ VDD! VSS n_601 / MUX2X1
Xg10288__6260 soc_can_rx_inst_shift_reg<101> soc_can_rx_inst_shift_reg<102> 
+ n_15 VDD! VSS n_600 / MUX2X1
Xg10289__4319 soc_can_rx_inst_shift_reg<63> soc_can_rx_inst_shift_reg<64> n_15 
+ VDD! VSS n_599 / MUX2X1
Xg10290__8428 soc_can_rx_inst_shift_reg<102> soc_can_rx_inst_shift_reg<103> 
+ n_15 VDD! VSS n_598 / MUX2X1
Xg10291__5526 soc_can_rx_inst_shift_reg<103> soc_can_rx_inst_shift_reg<104> 
+ n_15 VDD! VSS n_597 / MUX2X1
Xg10292__6783 soc_can_rx_inst_shift_reg<64> soc_can_rx_inst_shift_reg<65> n_15 
+ VDD! VSS n_596 / MUX2X1
Xg10293__3680 soc_can_rx_inst_shift_reg<104> soc_can_rx_inst_shift_reg<105> 
+ n_15 VDD! VSS n_595 / MUX2X1
Xg10294__1617 soc_can_rx_inst_shift_reg<65> soc_can_rx_inst_shift_reg<66> n_15 
+ VDD! VSS n_594 / MUX2X1
Xg10295__2802 soc_can_rx_inst_shift_reg<105> soc_can_rx_inst_shift_reg<106> 
+ n_15 VDD! VSS n_593 / MUX2X1
Xg10296__1705 soc_can_rx_inst_shift_reg<106> can_rx_PAD n_15 VDD! VSS n_592 / 
+ MUX2X1
Xg10297__5122 soc_can_rx_inst_shift_reg<66> soc_can_rx_inst_shift_reg<67> n_15 
+ VDD! VSS n_591 / MUX2X1
Xg10298__8246 soc_can_rx_inst_shift_reg<67> soc_can_rx_inst_shift_reg<68> n_15 
+ VDD! VSS n_590 / MUX2X1
Xg10299__7098 soc_can_rx_inst_shift_reg<68> soc_can_rx_inst_shift_reg<69> n_15 
+ VDD! VSS n_589 / MUX2X1
Xg10300__6131 soc_can_rx_inst_shift_reg<69> soc_can_rx_inst_shift_reg<70> n_15 
+ VDD! VSS n_588 / MUX2X1
Xg10301__1881 soc_can_rx_inst_shift_reg<70> soc_can_rx_inst_shift_reg<71> n_15 
+ VDD! VSS n_587 / MUX2X1
Xg10302__5115 soc_can_rx_inst_shift_reg<71> soc_can_rx_inst_shift_reg<72> n_15 
+ VDD! VSS n_586 / MUX2X1
Xg10303__7482 soc_can_rx_inst_shift_reg<72> soc_can_rx_inst_shift_reg<73> n_15 
+ VDD! VSS n_585 / MUX2X1
Xg10304__4733 soc_can_rx_inst_shift_reg<73> soc_can_rx_inst_shift_reg<74> n_15 
+ VDD! VSS n_584 / MUX2X1
Xg10305__6161 soc_can_rx_inst_shift_reg<74> soc_can_rx_inst_shift_reg<75> n_15 
+ VDD! VSS n_583 / MUX2X1
Xg10306__9315 soc_can_rx_inst_shift_reg<75> soc_can_rx_inst_shift_reg<76> n_15 
+ VDD! VSS n_582 / MUX2X1
Xg10307__9945 soc_can_rx_inst_shift_reg<76> soc_can_rx_inst_shift_reg<77> n_15 
+ VDD! VSS n_581 / MUX2X1
Xg10308__2883 soc_can_rx_inst_shift_reg<77> soc_can_rx_inst_shift_reg<78> n_15 
+ VDD! VSS n_580 / MUX2X1
Xg10309__2346 n_357 soc_uart_tx_inst_n_126 n_67 VDD! VSS n_579 / MUX2X1
Xg10515__5477 n_188 soc_uart_tx_inst_Status_reg<1> n_104 VDD! VSS n_378 / 
+ MUX2X1
Xg10516__2398 soc_uart_rx_inst_shift_reg<8> soc_uart_rx_inst_shift_reg<9> 
+ n_321 VDD! VSS n_377 / MUX2X1
Xg10517__5107 soc_uart_rx_inst_shift_reg<5> soc_uart_rx_inst_shift_reg<6> 
+ n_321 VDD! VSS n_376 / MUX2X1
Xg10518__6260 soc_uart_rx_inst_shift_reg<1> soc_uart_rx_inst_shift_reg<2> 
+ n_321 VDD! VSS n_375 / MUX2X1
Xg10519__4319 soc_uart_rx_inst_shift_reg<2> soc_uart_rx_inst_shift_reg<3> 
+ n_321 VDD! VSS n_374 / MUX2X1
Xg10520__8428 soc_uart_rx_inst_shift_reg<3> soc_uart_rx_inst_shift_reg<4> 
+ n_321 VDD! VSS n_373 / MUX2X1
Xg10521__5526 soc_uart_rx_inst_shift_reg<4> soc_uart_rx_inst_shift_reg<5> 
+ n_321 VDD! VSS n_372 / MUX2X1
Xg10522__6783 soc_uart_rx_inst_shift_reg<6> soc_uart_rx_inst_shift_reg<7> 
+ n_321 VDD! VSS n_371 / MUX2X1
Xg10523__3680 soc_uart_rx_inst_shift_reg<7> soc_uart_rx_inst_shift_reg<8> 
+ n_321 VDD! VSS n_370 / MUX2X1
Xg10524__1617 soc_uart_rx_inst_shift_reg<9> ser_rx_PAD n_321 VDD! VSS n_369 / 
+ MUX2X1
Xg10525__2802 n_321 n_239 soc_uart_rx_inst_bit_count<0> VDD! VSS n_368 / MUX2X1
Xg10601__6131 n_13 n_5 soc_can_tx_inst_status_reg<0> VDD! VSS n_358 / MUX2X1
Xg10602__1881 soc_uart_tx_inst_shift_reg<1> soc_uart_tx_inst_shift_reg<0> 
+ n_104 VDD! VSS n_357 / MUX2X1
Xg10766__6161 soc_can_tx_data_bus<40> soc_can_tx_data_bus<32> 
+ soc_uart_data_ready VDD! VSS n_216 / MUX2X1
Xg10796__9945 soc_can_tx_data_bus<20> soc_can_tx_data_bus<12> 
+ soc_uart_data_ready VDD! VSS n_186 / MUX2X1
Xg10797__2883 soc_can_tx_data_bus<6> soc_uart_rx_data_bus<6> 
+ soc_uart_data_ready VDD! VSS n_185 / MUX2X1
Xg10798__2346 soc_can_tx_data_bus<21> soc_can_tx_data_bus<13> 
+ soc_uart_data_ready VDD! VSS n_184 / MUX2X1
Xg10799__1666 soc_can_tx_data_bus<22> soc_can_tx_data_bus<14> 
+ soc_uart_data_ready VDD! VSS n_183 / MUX2X1
Xg10800__7410 soc_can_tx_data_bus<23> soc_can_tx_data_bus<15> 
+ soc_uart_data_ready VDD! VSS n_182 / MUX2X1
Xg10801__6417 soc_can_tx_data_bus<32> soc_can_tx_data_bus<24> 
+ soc_uart_data_ready VDD! VSS n_181 / MUX2X1
Xg10802__5477 soc_can_tx_data_bus<24> soc_can_tx_data_bus<16> 
+ soc_uart_data_ready VDD! VSS n_180 / MUX2X1
Xg10803__2398 soc_can_tx_data_bus<25> soc_can_tx_data_bus<17> 
+ soc_uart_data_ready VDD! VSS n_179 / MUX2X1
Xg10804__5107 soc_can_tx_data_bus<26> soc_can_tx_data_bus<18> 
+ soc_uart_data_ready VDD! VSS n_178 / MUX2X1
Xg10805__6260 soc_can_tx_data_bus<2> soc_uart_rx_data_bus<2> 
+ soc_uart_data_ready VDD! VSS n_177 / MUX2X1
Xg10806__4319 soc_can_tx_data_bus<27> soc_can_tx_data_bus<19> 
+ soc_uart_data_ready VDD! VSS n_176 / MUX2X1
Xg10807__8428 soc_can_tx_data_bus<38> soc_can_tx_data_bus<30> 
+ soc_uart_data_ready VDD! VSS n_175 / MUX2X1
Xg10808__5526 soc_can_tx_data_bus<29> soc_can_tx_data_bus<21> 
+ soc_uart_data_ready VDD! VSS n_174 / MUX2X1
Xg10809__6783 soc_can_tx_data_bus<44> soc_can_tx_data_bus<36> 
+ soc_uart_data_ready VDD! VSS n_173 / MUX2X1
Xg10810__3680 soc_can_tx_data_bus<30> soc_can_tx_data_bus<22> 
+ soc_uart_data_ready VDD! VSS n_172 / MUX2X1
Xg10811__1617 soc_can_tx_data_bus<31> soc_can_tx_data_bus<23> 
+ soc_uart_data_ready VDD! VSS n_171 / MUX2X1
Xg10812__2802 soc_can_tx_data_bus<62> soc_can_tx_data_bus<54> 
+ soc_uart_data_ready VDD! VSS n_170 / MUX2X1
Xg10813__1705 soc_can_tx_data_bus<33> soc_can_tx_data_bus<25> 
+ soc_uart_data_ready VDD! VSS n_169 / MUX2X1
Xg10814__5122 soc_can_tx_data_bus<34> soc_can_tx_data_bus<26> 
+ soc_uart_data_ready VDD! VSS n_168 / MUX2X1
Xg10815__8246 soc_can_tx_data_bus<35> soc_can_tx_data_bus<27> 
+ soc_uart_data_ready VDD! VSS n_167 / MUX2X1
Xg10816__7098 soc_can_tx_data_bus<37> soc_can_tx_data_bus<29> 
+ soc_uart_data_ready VDD! VSS n_166 / MUX2X1
Xg10817__6131 soc_can_tx_data_bus<61> soc_can_tx_data_bus<53> 
+ soc_uart_data_ready VDD! VSS n_165 / MUX2X1
Xg10818__1881 soc_can_tx_data_bus<1> soc_uart_rx_data_bus<1> 
+ soc_uart_data_ready VDD! VSS n_164 / MUX2X1
Xg10819__5115 soc_can_tx_data_bus<36> soc_can_tx_data_bus<28> 
+ soc_uart_data_ready VDD! VSS n_163 / MUX2X1
Xg10821__4733 soc_can_tx_data_bus<28> soc_can_tx_data_bus<20> 
+ soc_uart_data_ready VDD! VSS n_161 / MUX2X1
Xg10822__6161 soc_can_tx_data_bus<42> soc_can_tx_data_bus<34> 
+ soc_uart_data_ready VDD! VSS n_160 / MUX2X1
Xg10823__9315 soc_can_tx_data_bus<43> soc_can_tx_data_bus<35> 
+ soc_uart_data_ready VDD! VSS n_159 / MUX2X1
Xg10824__9945 soc_can_tx_data_bus<60> soc_can_tx_data_bus<52> 
+ soc_uart_data_ready VDD! VSS n_158 / MUX2X1
Xg10825__2883 soc_can_tx_data_bus<45> soc_can_tx_data_bus<37> 
+ soc_uart_data_ready VDD! VSS n_157 / MUX2X1
Xg10826__2346 soc_can_tx_data_bus<47> soc_can_tx_data_bus<39> 
+ soc_uart_data_ready VDD! VSS n_156 / MUX2X1
Xg10827__1666 soc_can_tx_data_bus<49> soc_can_tx_data_bus<41> 
+ soc_uart_data_ready VDD! VSS n_155 / MUX2X1
Xg10828__7410 soc_can_tx_data_bus<59> soc_can_tx_data_bus<51> 
+ soc_uart_data_ready VDD! VSS n_154 / MUX2X1
Xg10829__6417 soc_can_tx_data_bus<50> soc_can_tx_data_bus<42> 
+ soc_uart_data_ready VDD! VSS n_153 / MUX2X1
Xg10830__5477 soc_can_tx_data_bus<51> soc_can_tx_data_bus<43> 
+ soc_uart_data_ready VDD! VSS n_152 / MUX2X1
Xg10831__2398 soc_can_tx_data_bus<53> soc_can_tx_data_bus<45> 
+ soc_uart_data_ready VDD! VSS n_151 / MUX2X1
Xg10832__5107 soc_can_tx_data_bus<58> soc_can_tx_data_bus<50> 
+ soc_uart_data_ready VDD! VSS n_150 / MUX2X1
Xg10833__6260 soc_can_tx_data_bus<54> soc_can_tx_data_bus<46> 
+ soc_uart_data_ready VDD! VSS n_149 / MUX2X1
Xg10834__4319 soc_can_tx_data_bus<3> soc_uart_rx_data_bus<3> 
+ soc_uart_data_ready VDD! VSS n_148 / MUX2X1
Xg10835__8428 soc_can_tx_data_bus<63> soc_can_tx_data_bus<55> 
+ soc_uart_data_ready VDD! VSS n_147 / MUX2X1
Xg10836__5526 soc_can_tx_data_bus<57> soc_can_tx_data_bus<49> 
+ soc_uart_data_ready VDD! VSS n_146 / MUX2X1
Xg10837__6783 soc_can_tx_data_bus<5> soc_uart_rx_data_bus<5> 
+ soc_uart_data_ready VDD! VSS n_145 / MUX2X1
Xg10838__3680 soc_can_tx_data_bus<46> soc_can_tx_data_bus<38> 
+ soc_uart_data_ready VDD! VSS n_144 / MUX2X1
Xg10839__1617 soc_can_tx_data_bus<39> soc_can_tx_data_bus<31> 
+ soc_uart_data_ready VDD! VSS n_143 / MUX2X1
Xg10840__2802 soc_can_tx_data_bus<41> soc_can_tx_data_bus<33> 
+ soc_uart_data_ready VDD! VSS n_142 / MUX2X1
Xg10841__1705 soc_can_tx_data_bus<48> soc_can_tx_data_bus<40> 
+ soc_uart_data_ready VDD! VSS n_141 / MUX2X1
Xg10842__5122 soc_can_tx_data_bus<52> soc_can_tx_data_bus<44> 
+ soc_uart_data_ready VDD! VSS n_140 / MUX2X1
Xg10843__8246 soc_can_tx_data_bus<0> soc_uart_rx_data_bus<0> 
+ soc_uart_data_ready VDD! VSS n_139 / MUX2X1
Xg10844__7098 soc_can_tx_data_bus<56> soc_can_tx_data_bus<48> 
+ soc_uart_data_ready VDD! VSS n_138 / MUX2X1
Xg10845__6131 soc_can_tx_data_bus<19> soc_can_tx_data_bus<11> 
+ soc_uart_data_ready VDD! VSS n_137 / MUX2X1
Xg10846__1881 soc_can_tx_data_bus<7> soc_uart_rx_data_bus<7> 
+ soc_uart_data_ready VDD! VSS n_136 / MUX2X1
Xg10847__5115 soc_can_tx_data_bus<18> soc_can_tx_data_bus<10> 
+ soc_uart_data_ready VDD! VSS n_135 / MUX2X1
Xg10848__7482 soc_can_tx_data_bus<8> soc_can_tx_data_bus<0> 
+ soc_uart_data_ready VDD! VSS n_134 / MUX2X1
Xg10849__4733 soc_can_tx_data_bus<4> soc_uart_rx_data_bus<4> 
+ soc_uart_data_ready VDD! VSS n_133 / MUX2X1
Xg10850__6161 soc_can_tx_data_bus<9> soc_can_tx_data_bus<1> 
+ soc_uart_data_ready VDD! VSS n_132 / MUX2X1
Xg10851__9315 soc_can_tx_data_bus<55> soc_can_tx_data_bus<47> 
+ soc_uart_data_ready VDD! VSS n_131 / MUX2X1
Xg10852__9945 soc_can_tx_data_bus<10> soc_can_tx_data_bus<2> 
+ soc_uart_data_ready VDD! VSS n_130 / MUX2X1
Xg10853__2883 soc_can_tx_data_bus<11> soc_can_tx_data_bus<3> 
+ soc_uart_data_ready VDD! VSS n_129 / MUX2X1
Xg10854__2346 soc_can_tx_data_bus<12> soc_can_tx_data_bus<4> 
+ soc_uart_data_ready VDD! VSS n_128 / MUX2X1
Xg10855__1666 soc_can_tx_data_bus<13> soc_can_tx_data_bus<5> 
+ soc_uart_data_ready VDD! VSS n_127 / MUX2X1
Xg10856__7410 soc_can_tx_data_bus<14> soc_can_tx_data_bus<6> 
+ soc_uart_data_ready VDD! VSS n_126 / MUX2X1
Xg10857__6417 soc_can_tx_data_bus<15> soc_can_tx_data_bus<7> 
+ soc_uart_data_ready VDD! VSS n_125 / MUX2X1
Xg10858__5477 soc_can_tx_data_bus<16> soc_can_tx_data_bus<8> 
+ soc_uart_data_ready VDD! VSS n_124 / MUX2X1
Xg10859__2398 soc_can_tx_data_bus<17> soc_can_tx_data_bus<9> 
+ soc_uart_data_ready VDD! VSS n_123 / MUX2X1
Xg10860__5107 soc_can_tx_inst_shift_reg<1> soc_can_tx_inst_shift_reg<2> 
+ soc_can_tx_inst_state<1> VDD! VSS n_122 / MUX2X1
Xg10861__6260 soc_can_tx_inst_shift_reg<3> soc_can_tx_inst_shift_reg<4> 
+ soc_can_tx_inst_state<1> VDD! VSS n_121 / MUX2X1
Xg10862__4319 soc_can_tx_inst_shift_reg<4> soc_can_tx_inst_shift_reg<5> 
+ soc_can_tx_inst_state<1> VDD! VSS n_120 / MUX2X1
Xg10863__8428 soc_uart_tx_data_Bus<7> soc_Can_rx_data_Bus<7> 
+ soc_can_data_ready VDD! VSS n_119 / MUX2X1
Xg10864__5526 soc_uart_tx_data_Bus<5> soc_Can_rx_data_Bus<5> 
+ soc_can_data_ready VDD! VSS n_118 / MUX2X1
Xg10865__6783 soc_uart_tx_data_Bus<1> soc_Can_rx_data_Bus<1> 
+ soc_can_data_ready VDD! VSS n_117 / MUX2X1
Xg10866__3680 soc_uart_tx_data_Bus<3> soc_Can_rx_data_Bus<3> 
+ soc_can_data_ready VDD! VSS n_116 / MUX2X1
Xg10867__1617 soc_uart_tx_data_Bus<2> soc_Can_rx_data_Bus<2> 
+ soc_can_data_ready VDD! VSS n_115 / MUX2X1
Xg10868__2802 soc_uart_tx_data_Bus<6> soc_Can_rx_data_Bus<6> 
+ soc_can_data_ready VDD! VSS n_114 / MUX2X1
Xg10869__1705 soc_uart_tx_data_Bus<0> soc_Can_rx_data_Bus<0> 
+ soc_can_data_ready VDD! VSS n_113 / MUX2X1
Xg10870__5122 soc_uart_tx_data_Bus<4> soc_Can_rx_data_Bus<4> 
+ soc_can_data_ready VDD! VSS n_112 / MUX2X1
Xg11072 n_842 n_577 soc_uart_rx_inst_bit_count<2> VDD! VSS n_843 / MUX2X1
Xg11075 n_847 n_744 soc_can_tx_inst_status_reg<5> VDD! VSS n_848 / MUX2X1
Xg11077 n_849 n_387 soc_can_tx_inst_status_reg<3> VDD! VSS n_850 / MUX2X1
Xg11079 n_851 n_338 soc_uart_rx_inst_bit_count<1> VDD! VSS n_852 / MUX2X1
Xg11081 n_853 n_294 soc_can_tx_inst_status_reg<1> VDD! VSS n_854 / MUX2X1
Xg4312__6260 soc_uart_tx_inst_shift_reg<0> n_21 VDD! VSS n_822 / NOR2X1
Xg4313__4319 soc_can_tx_inst_shift_reg<0> n_819 VDD! VSS n_821 / NOR2X1
Xg4315__8428 soc_can_tx_inst_state<0> soc_can_tx_inst_state<1> VDD! VSS n_819 
+ / NOR2X1
Xg4316__5526 soc_uart_tx_inst_state<0> soc_uart_tx_inst_state<1> VDD! VSS n_21 
+ / NOR2X1
Xg4610__7482 n_845 n_788 VDD! VSS n_793 / NOR2X1
Xg4619__9315 soc_can_rx_inst_bit_count<5> soc_can_rx_inst_bit_count<4> VDD! 
+ VSS n_787 / NOR2X1
Xg10237__1617 soc_can_rx_inst_n_1143 n_574 VDD! VSS n_688 / NOR2X1
Xg10415__1881 soc_uart_rx_inst_state<0> n_349 VDD! VSS n_577 / NOR2X1
Xg10514__6417 n_339 n_366 VDD! VSS n_379 / NOR2X1
Xg10603__5115 n_313 n_327 VDD! VSS n_356 / NOR2X1
Xg10604__7482 n_314 n_324 VDD! VSS n_355 / NOR2X1
Xg10620__5526 soc_can_index<2> n_327 VDD! VSS n_339 / NOR2X1
Xg10645__5115 n_322 n_241 VDD! VSS n_365 / NOR2X1
Xg10652__6161 soc_can_tx_inst_state<1> n_328 VDD! VSS n_16 / NOR2X1
Xg10663__2398 soc_uart_tx_inst_Status_reg<2> n_64 VDD! VSS n_314 / NOR2X1
Xg10664__5107 soc_can_index<1> n_68 VDD! VSS n_313 / NOR2X1
Xg10675__8246 soc_can_tx_inst_status_reg<2> n_66 VDD! VSS n_302 / NOR2X1
Xg10742__2346 soc_can_tx_inst_status_reg<6> n_71 VDD! VSS n_235 / NOR2X1
Xg10765__4733 n_23 n_107 VDD! VSS n_321 / NOR2X1
Xg10794__6161 n_63 n_64 VDD! VSS n_188 / NOR2X1
Xg10795__9315 n_68 n_37 VDD! VSS n_187 / NOR2X1
Xg10873__6131 n_44 soc_can_rx_inst_n_1158 VDD! VSS n_109 / NOR2X1
Xg10914__1881 n_24 n_845 VDD! VSS n_75 / NOR2X1
Xg10918__4733 soc_uart_tx_inst_state<0> n_20 VDD! VSS n_105 / NOR2X1
Xg10919__6161 soc_can_tx_inst_state<0> n_5 VDD! VSS n_13 / NOR2X1
Xg10923__9315 soc_uart_tx_inst_Status_reg<1> soc_uart_tx_inst_Status_reg<0> 
+ VDD! VSS n_63 / NOR2X1
Xg10944__7098 soc_can_tx_inst_status_reg<4> soc_can_tx_inst_state<0> VDD! VSS 
+ n_42 / NOR2X1
Xg10947__5115 n_27 n_23 VDD! VSS n_39 / NOR2X1
Xg10949__4733 soc_can_index<0> soc_uart_data_ready VDD! VSS n_37 / NOR2X1
Xg11080 n_70 n_107 VDD! VSS n_851 / NOR2X1
Xg4318__3680 soc_uart_tx_inst_state<1> soc_uart_tx_inst_state<0> VDD! VSS 
+ n_830 / NAND2X1
Xg4319__1617 soc_can_tx_inst_state<1> soc_can_tx_inst_state<0> VDD! VSS n_831 
+ / NAND2X1
Xg4603__8246 n_793 soc_can_rx_inst_bit_count<4> VDD! VSS 
+ soc_can_rx_inst_n_1161 / NAND2X1
Xg4609__5115 n_787 n_788 VDD! VSS soc_can_rx_inst_n_1143 / NAND2X1
Xg4615__4733 soc_can_rx_inst_state<2> n_32 VDD! VSS n_789 / NAND2X1
Xg4618__6161 soc_can_rx_inst_bit_count<3> soc_can_rx_inst_bit_count<2> VDD! 
+ VSS n_788 / NAND2X1
Xg9905__1666 n_770 n_570 VDD! VSS n_775 / NAND2X1
Xg9956__5107 n_739 soc_can_tx_inst_status_reg<6> VDD! VSS n_770 / NAND2X1
Xg9957__6260 n_742 n_351 VDD! VSS n_769 / NAND2X1
Xg10095__7410 n_344 n_645 VDD! VSS n_746 / NAND2X1
Xg10099__5107 n_678 soc_uart_rx_inst_bit_count<3> VDD! VSS n_742 / NAND2X1
Xg10168__5477 n_332 n_560 VDD! VSS n_687 / NAND2X1
Xg10170__5107 n_422 n_226 VDD! VSS n_685 / NAND2X1
Xg10171__6260 n_424 n_227 VDD! VSS n_684 / NAND2X1
Xg10172__4319 n_426 n_248 VDD! VSS n_683 / NAND2X1
Xg10173__8428 n_427 n_228 VDD! VSS n_682 / NAND2X1
Xg10174__5526 n_428 n_307 VDD! VSS n_681 / NAND2X1
Xg10175__6783 n_411 n_229 VDD! VSS n_680 / NAND2X1
Xg10177__1617 n_577 n_98 VDD! VSS n_678 / NAND2X1
Xg10182__7098 n_346 n_433 VDD! VSS n_673 / NAND2X1
Xg10183__6131 n_436 n_222 VDD! VSS n_672 / NAND2X1
Xg10184__1881 n_437 n_249 VDD! VSS n_671 / NAND2X1
Xg10185__5115 n_438 n_251 VDD! VSS n_670 / NAND2X1
Xg10186__7482 n_439 n_202 VDD! VSS n_669 / NAND2X1
Xg10187__4733 n_440 n_252 VDD! VSS n_668 / NAND2X1
Xg10188__6161 n_441 n_253 VDD! VSS n_667 / NAND2X1
Xg10189__9315 n_442 n_254 VDD! VSS n_666 / NAND2X1
Xg10190__9945 n_443 n_231 VDD! VSS n_665 / NAND2X1
Xg10191__2883 n_444 n_255 VDD! VSS n_664 / NAND2X1
Xg10192__2346 n_445 n_256 VDD! VSS n_663 / NAND2X1
Xg10193__1666 n_446 n_257 VDD! VSS n_662 / NAND2X1
Xg10194__7410 n_447 n_258 VDD! VSS n_661 / NAND2X1
Xg10195__6417 n_448 n_259 VDD! VSS n_660 / NAND2X1
Xg10196__5477 n_449 n_260 VDD! VSS n_659 / NAND2X1
Xg10197__2398 n_450 n_261 VDD! VSS n_658 / NAND2X1
Xg10198__5107 n_451 n_230 VDD! VSS n_657 / NAND2X1
Xg10199__6260 n_452 n_262 VDD! VSS n_656 / NAND2X1
Xg10200__4319 n_453 n_343 VDD! VSS n_655 / NAND2X1
Xg10201__8428 n_342 n_460 VDD! VSS n_654 / NAND2X1
Xg10203__6783 n_335 n_471 VDD! VSS n_652 / NAND2X1
Xg10204__3680 n_330 n_480 VDD! VSS n_651 / NAND2X1
Xg10240__1705 n_420 n_234 VDD! VSS n_648 / NAND2X1
Xg10241__5122 n_419 n_225 VDD! VSS n_647 / NAND2X1
Xg10242__8246 n_421 n_292 VDD! VSS n_646 / NAND2X1
Xg10243__7098 n_15 n_431 VDD! VSS n_645 / NAND2X1
Xg10310__1666 n_568 soc_can_tx_inst_state<1> VDD! VSS n_650 / NAND2X1
Xg10312__7410 n_16 soc_can_tx_data_bus<58> VDD! VSS n_576 / NAND2X1
Xg10313__6417 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<65> VDD! VSS n_575 / 
+ NAND2X1
Xg10315__2398 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<64> VDD! VSS n_573 / 
+ NAND2X1
Xg10318__4319 n_365 n_235 VDD! VSS n_570 / NAND2X1
Xg10320__5526 n_340 n_7 VDD! VSS n_568 / NAND2X1
Xg10321__6783 n_364 soc_can_tx_inst_shift_reg<0> VDD! VSS n_567 / NAND2X1
Xg10322__3680 n_364 soc_can_tx_inst_shift_reg<2> VDD! VSS n_566 / NAND2X1
Xg10323__1617 n_364 soc_can_tx_inst_shift_reg<5> VDD! VSS n_565 / NAND2X1
Xg10324__2802 n_364 soc_can_tx_inst_shift_reg<6> VDD! VSS n_564 / NAND2X1
Xg10325__1705 n_364 soc_can_tx_inst_shift_reg<7> VDD! VSS n_563 / NAND2X1
Xg10326__5122 n_364 soc_can_tx_inst_shift_reg<8> VDD! VSS n_562 / NAND2X1
Xg10327__8246 n_364 soc_can_tx_inst_shift_reg<9> VDD! VSS n_561 / NAND2X1
Xg10328__7098 n_15 n_200 VDD! VSS n_560 / NAND2X1
Xg10329__6131 n_16 soc_can_tx_data_bus<24> VDD! VSS n_559 / NAND2X1
Xg10330__1881 n_16 soc_can_tx_data_bus<25> VDD! VSS n_558 / NAND2X1
Xg10331__5115 n_16 soc_can_tx_data_bus<26> VDD! VSS n_557 / NAND2X1
Xg10332__7482 n_16 soc_can_tx_data_bus<27> VDD! VSS n_556 / NAND2X1
Xg10333__4733 n_16 soc_can_tx_data_bus<28> VDD! VSS n_555 / NAND2X1
Xg10334__6161 n_16 soc_can_tx_data_bus<29> VDD! VSS n_554 / NAND2X1
Xg10335__9315 n_16 soc_can_tx_data_bus<30> VDD! VSS n_553 / NAND2X1
Xg10336__9945 n_16 soc_can_tx_data_bus<31> VDD! VSS n_552 / NAND2X1
Xg10337__2883 n_16 soc_can_tx_data_bus<32> VDD! VSS n_551 / NAND2X1
Xg10338__2346 n_16 soc_can_tx_data_bus<33> VDD! VSS n_550 / NAND2X1
Xg10339__1666 n_16 soc_can_tx_data_bus<34> VDD! VSS n_549 / NAND2X1
Xg10340__7410 n_16 soc_can_tx_data_bus<35> VDD! VSS n_548 / NAND2X1
Xg10341__6417 n_16 soc_can_tx_data_bus<36> VDD! VSS n_547 / NAND2X1
Xg10342__5477 n_16 soc_can_tx_data_bus<37> VDD! VSS n_546 / NAND2X1
Xg10343__2398 n_16 soc_can_tx_data_bus<38> VDD! VSS n_545 / NAND2X1
Xg10344__5107 n_16 soc_can_tx_data_bus<39> VDD! VSS n_544 / NAND2X1
Xg10345__6260 n_16 soc_can_tx_data_bus<40> VDD! VSS n_543 / NAND2X1
Xg10346__4319 n_16 soc_can_tx_data_bus<41> VDD! VSS n_542 / NAND2X1
Xg10347__8428 n_16 soc_can_tx_data_bus<42> VDD! VSS n_541 / NAND2X1
Xg10348__5526 n_16 soc_can_tx_data_bus<43> VDD! VSS n_540 / NAND2X1
Xg10349__6783 n_16 soc_can_tx_data_bus<44> VDD! VSS n_539 / NAND2X1
Xg10350__3680 n_16 soc_can_tx_data_bus<45> VDD! VSS n_538 / NAND2X1
Xg10351__1617 n_16 soc_can_tx_data_bus<46> VDD! VSS n_537 / NAND2X1
Xg10352__2802 n_16 soc_can_tx_data_bus<47> VDD! VSS n_536 / NAND2X1
Xg10353__1705 n_16 soc_can_tx_data_bus<48> VDD! VSS n_535 / NAND2X1
Xg10354__5122 n_16 soc_can_tx_data_bus<49> VDD! VSS n_534 / NAND2X1
Xg10355__8246 n_16 soc_can_tx_data_bus<50> VDD! VSS n_533 / NAND2X1
Xg10356__7098 n_16 soc_can_tx_data_bus<51> VDD! VSS n_532 / NAND2X1
Xg10357__6131 n_16 soc_can_tx_data_bus<52> VDD! VSS n_531 / NAND2X1
Xg10358__1881 n_16 soc_can_tx_data_bus<53> VDD! VSS n_530 / NAND2X1
Xg10359__5115 n_16 soc_can_tx_data_bus<54> VDD! VSS n_529 / NAND2X1
Xg10360__7482 n_16 soc_can_tx_data_bus<55> VDD! VSS n_528 / NAND2X1
Xg10361__4733 n_16 soc_can_tx_data_bus<56> VDD! VSS n_527 / NAND2X1
Xg10362__6161 n_16 soc_can_tx_data_bus<57> VDD! VSS n_526 / NAND2X1
Xg10363__9315 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<66> VDD! VSS n_525 / 
+ NAND2X1
Xg10364__9945 n_16 soc_can_tx_data_bus<59> VDD! VSS n_524 / NAND2X1
Xg10365__2883 n_16 soc_can_tx_data_bus<60> VDD! VSS n_523 / NAND2X1
Xg10366__2346 n_16 soc_can_tx_data_bus<61> VDD! VSS n_522 / NAND2X1
Xg10367__1666 n_16 soc_can_tx_data_bus<62> VDD! VSS n_521 / NAND2X1
Xg10368__7410 n_16 soc_can_tx_data_bus<63> VDD! VSS n_520 / NAND2X1
Xg10369__6417 n_16 soc_can_tx_data_bus<0> VDD! VSS n_519 / NAND2X1
Xg10370__5477 n_16 soc_can_tx_data_bus<1> VDD! VSS n_518 / NAND2X1
Xg10371__2398 n_16 soc_can_tx_data_bus<2> VDD! VSS n_517 / NAND2X1
Xg10372__5107 n_16 soc_can_tx_data_bus<3> VDD! VSS n_516 / NAND2X1
Xg10373__6260 n_16 soc_can_tx_data_bus<4> VDD! VSS n_515 / NAND2X1
Xg10374__4319 n_16 soc_can_tx_data_bus<5> VDD! VSS n_514 / NAND2X1
Xg10375__8428 n_16 soc_can_tx_data_bus<6> VDD! VSS n_513 / NAND2X1
Xg10376__5526 n_16 soc_can_tx_data_bus<7> VDD! VSS n_512 / NAND2X1
Xg10377__6783 n_16 soc_can_tx_data_bus<8> VDD! VSS n_511 / NAND2X1
Xg10378__3680 n_16 soc_can_tx_data_bus<9> VDD! VSS n_510 / NAND2X1
Xg10379__1617 n_16 soc_can_tx_data_bus<10> VDD! VSS n_509 / NAND2X1
Xg10380__2802 n_16 soc_can_tx_data_bus<11> VDD! VSS n_508 / NAND2X1
Xg10381__1705 n_16 soc_can_tx_data_bus<12> VDD! VSS n_507 / NAND2X1
Xg10382__5122 n_16 soc_can_tx_data_bus<13> VDD! VSS n_506 / NAND2X1
Xg10383__8246 n_16 soc_can_tx_data_bus<14> VDD! VSS n_505 / NAND2X1
Xg10384__7098 n_16 soc_can_tx_data_bus<15> VDD! VSS n_504 / NAND2X1
Xg10385__6131 n_16 soc_can_tx_data_bus<16> VDD! VSS n_503 / NAND2X1
Xg10386__1881 n_16 soc_can_tx_data_bus<17> VDD! VSS n_502 / NAND2X1
Xg10387__5115 n_16 soc_can_tx_data_bus<18> VDD! VSS n_501 / NAND2X1
Xg10388__7482 n_16 soc_can_tx_data_bus<19> VDD! VSS n_500 / NAND2X1
Xg10389__4733 n_16 soc_can_tx_data_bus<20> VDD! VSS n_499 / NAND2X1
Xg10390__6161 n_16 soc_can_tx_data_bus<21> VDD! VSS n_498 / NAND2X1
Xg10391__9315 n_16 soc_can_tx_data_bus<22> VDD! VSS n_497 / NAND2X1
Xg10392__9945 n_16 soc_can_tx_data_bus<23> VDD! VSS n_496 / NAND2X1
Xg10393__2883 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<45> VDD! VSS n_495 / 
+ NAND2X1
Xg10394__2346 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<46> VDD! VSS n_494 / 
+ NAND2X1
Xg10395__1666 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<47> VDD! VSS n_493 / 
+ NAND2X1
Xg10396__7410 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<48> VDD! VSS n_492 / 
+ NAND2X1
Xg10397__6417 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<49> VDD! VSS n_491 / 
+ NAND2X1
Xg10398__5477 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<50> VDD! VSS n_490 / 
+ NAND2X1
Xg10399__2398 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<51> VDD! VSS n_489 / 
+ NAND2X1
Xg10400__5107 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<52> VDD! VSS n_488 / 
+ NAND2X1
Xg10401__6260 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<53> VDD! VSS n_487 / 
+ NAND2X1
Xg10402__4319 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<54> VDD! VSS n_486 / 
+ NAND2X1
Xg10403__8428 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<55> VDD! VSS n_485 / 
+ NAND2X1
Xg10405__6783 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<56> VDD! VSS n_483 / 
+ NAND2X1
Xg10406__3680 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<57> VDD! VSS n_482 / 
+ NAND2X1
Xg10407__1617 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<58> VDD! VSS n_481 / 
+ NAND2X1
Xg10409__1705 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<59> VDD! VSS n_479 / 
+ NAND2X1
Xg10410__5122 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<60> VDD! VSS n_478 / 
+ NAND2X1
Xg10411__8246 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<61> VDD! VSS n_477 / 
+ NAND2X1
Xg10412__7098 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<62> VDD! VSS n_476 / 
+ NAND2X1
Xg10413__6131 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<63> VDD! VSS n_475 / 
+ NAND2X1
Xg10420__5115 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<67> VDD! VSS n_473 / 
+ NAND2X1
Xg10421__7482 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<68> VDD! VSS n_472 / 
+ NAND2X1
Xg10422__4733 n_15 n_360 VDD! VSS n_471 / NAND2X1
Xg10423__6161 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<69> VDD! VSS n_470 / 
+ NAND2X1
Xg10424__9315 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<70> VDD! VSS n_469 / 
+ NAND2X1
Xg10425__9945 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<71> VDD! VSS n_468 / 
+ NAND2X1
Xg10427__2346 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<72> VDD! VSS n_466 / 
+ NAND2X1
Xg10428__1666 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<73> VDD! VSS n_465 / 
+ NAND2X1
Xg10429__7410 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<74> VDD! VSS n_464 / 
+ NAND2X1
Xg10430__6417 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<75> VDD! VSS n_463 / 
+ NAND2X1
Xg10431__5477 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<76> VDD! VSS n_462 / 
+ NAND2X1
Xg10432__2398 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<77> VDD! VSS n_461 / 
+ NAND2X1
Xg10434__6260 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<78> VDD! VSS n_459 / 
+ NAND2X1
Xg10435__4319 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<79> VDD! VSS n_458 / 
+ NAND2X1
Xg10436__8428 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<80> VDD! VSS n_457 / 
+ NAND2X1
Xg10437__5526 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<81> VDD! VSS n_456 / 
+ NAND2X1
Xg10438__6783 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<82> VDD! VSS n_455 / 
+ NAND2X1
Xg10439__3680 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<83> VDD! VSS n_454 / 
+ NAND2X1
Xg10441__2802 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<84> VDD! VSS n_452 / 
+ NAND2X1
Xg10442__1705 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<85> VDD! VSS n_451 / 
+ NAND2X1
Xg10443__5122 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<86> VDD! VSS n_450 / 
+ NAND2X1
Xg10444__8246 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<87> VDD! VSS n_449 / 
+ NAND2X1
Xg10445__7098 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<88> VDD! VSS n_448 / 
+ NAND2X1
Xg10446__6131 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<89> VDD! VSS n_447 / 
+ NAND2X1
Xg10447__1881 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<90> VDD! VSS n_446 / 
+ NAND2X1
Xg10448__5115 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<91> VDD! VSS n_445 / 
+ NAND2X1
Xg10449__7482 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<92> VDD! VSS n_444 / 
+ NAND2X1
Xg10450__4733 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<93> VDD! VSS n_443 / 
+ NAND2X1
Xg10451__6161 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<94> VDD! VSS n_442 / 
+ NAND2X1
Xg10452__9315 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<95> VDD! VSS n_441 / 
+ NAND2X1
Xg10453__9945 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<96> VDD! VSS n_440 / 
+ NAND2X1
Xg10454__2883 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<97> VDD! VSS n_439 / 
+ NAND2X1
Xg10455__2346 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<98> VDD! VSS n_438 / 
+ NAND2X1
Xg10456__1666 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<100> VDD! VSS n_437 / 
+ NAND2X1
Xg10457__7410 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<101> VDD! VSS n_436 / 
+ NAND2X1
Xg10458__6417 n_17 n_82 VDD! VSS n_435 / NAND2X1
Xg10460__2398 n_352 soc_can_tx_inst_status_reg<2> VDD! VSS n_433 / NAND2X1
Xg10465__5526 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<12> VDD! VSS n_428 / 
+ NAND2X1
Xg10466__6783 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<13> VDD! VSS n_427 / 
+ NAND2X1
Xg10467__3680 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<14> VDD! VSS n_426 / 
+ NAND2X1
Xg10469__2802 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<15> VDD! VSS n_424 / 
+ NAND2X1
Xg10471__5122 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<16> VDD! VSS n_422 / 
+ NAND2X1
Xg10472__8246 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<17> VDD! VSS n_421 / 
+ NAND2X1
Xg10473__7098 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<18> VDD! VSS n_420 / 
+ NAND2X1
Xg10474__6131 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<19> VDD! VSS n_419 / 
+ NAND2X1
Xg10476__5115 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<20> VDD! VSS n_417 / 
+ NAND2X1
Xg10477__7482 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<21> VDD! VSS n_416 / 
+ NAND2X1
Xg10478__4733 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<22> VDD! VSS n_415 / 
+ NAND2X1
Xg10480__9315 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<23> VDD! VSS n_413 / 
+ NAND2X1
Xg10482__2883 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<11> VDD! VSS n_411 / 
+ NAND2X1
Xg10483__2346 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<24> VDD! VSS n_410 / 
+ NAND2X1
Xg10484__1666 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<25> VDD! VSS n_409 / 
+ NAND2X1
Xg10485__7410 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<26> VDD! VSS n_408 / 
+ NAND2X1
Xg10487__5477 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<27> VDD! VSS n_406 / 
+ NAND2X1
Xg10488__2398 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<28> VDD! VSS n_405 / 
+ NAND2X1
Xg10489__5107 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<29> VDD! VSS n_404 / 
+ NAND2X1
Xg10490__6260 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<30> VDD! VSS n_403 / 
+ NAND2X1
Xg10491__4319 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<31> VDD! VSS n_402 / 
+ NAND2X1
Xg10492__8428 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<32> VDD! VSS n_401 / 
+ NAND2X1
Xg10493__5526 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<33> VDD! VSS n_400 / 
+ NAND2X1
Xg10494__6783 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<34> VDD! VSS n_399 / 
+ NAND2X1
Xg10495__3680 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<35> VDD! VSS n_398 / 
+ NAND2X1
Xg10496__1617 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<36> VDD! VSS n_397 / 
+ NAND2X1
Xg10497__2802 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<37> VDD! VSS n_396 / 
+ NAND2X1
Xg10498__1705 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<38> VDD! VSS n_395 / 
+ NAND2X1
Xg10499__5122 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<39> VDD! VSS n_394 / 
+ NAND2X1
Xg10500__8246 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<40> VDD! VSS n_393 / 
+ NAND2X1
Xg10501__7098 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<41> VDD! VSS n_392 / 
+ NAND2X1
Xg10502__6131 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<42> VDD! VSS n_391 / 
+ NAND2X1
Xg10503__1881 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<43> VDD! VSS n_390 / 
+ NAND2X1
Xg10504__5115 FE_DBTN0_n_329 soc_can_tx_inst_shift_reg<44> VDD! VSS n_389 / 
+ NAND2X1
Xg10505__7482 n_363 n_242 VDD! VSS n_388 / NAND2X1
Xg10506__4733 n_337 soc_can_tx_inst_state<1> VDD! VSS n_387 / NAND2X1
Xg10527__5122 n_17 n_831 VDD! VSS n_474 / NAND2X1
Xg10606__6161 n_104 n_189 VDD! VSS n_353 / NAND2X1
Xg10607__9315 n_312 soc_can_tx_inst_state<1> VDD! VSS n_352 / NAND2X1
Xg10613__6417 n_13 n_302 VDD! VSS n_346 / NAND2X1
Xg10614__5477 n_71 n_192 VDD! VSS n_345 / NAND2X1
Xg10615__2398 n_217 soc_can_rx_inst_bit_count<6> VDD! VSS n_344 / NAND2X1
Xg10616__5107 n_217 soc_can_rx_inst_bit_count<5> VDD! VSS n_343 / NAND2X1
Xg10617__6260 n_217 soc_can_rx_inst_bit_count<4> VDD! VSS n_342 / NAND2X1
Xg10619__8428 n_323 soc_can_tx_inst_status_reg<3> VDD! VSS n_340 / NAND2X1
Xg10621__6783 n_196 n_22 VDD! VSS n_338 / NAND2X1
Xg10622__3680 n_322 n_7 VDD! VSS n_337 / NAND2X1
Xg10624__2802 n_217 soc_can_rx_inst_bit_count<3> VDD! VSS n_335 / NAND2X1
Xg10625__1705 n_321 soc_uart_rx_inst_bit_count<3> VDD! VSS n_334 / NAND2X1
Xg10626__5122 n_11 n_195 VDD! VSS n_333 / NAND2X1
Xg10627__8246 n_217 soc_can_rx_inst_bit_count<1> VDD! VSS n_332 / NAND2X1
Xg10628__7098 n_84 n_194 VDD! VSS n_331 / NAND2X1
Xg10629__6131 n_217 soc_can_rx_inst_bit_count<2> VDD! VSS n_330 / NAND2X1
Xg10650__7482 n_240 n_7 VDD! VSS n_364 / NAND2X1
Xg10653__9315 n_328 n_5 VDD! VSS n_329 / NAND2X1
Xg10657__2883 n_13 soc_can_tx_inst_shift_reg<82> VDD! VSS n_320 / NAND2X1
Xg10659__1666 n_13 soc_can_tx_inst_shift_reg<28> VDD! VSS n_318 / NAND2X1
Xg10661__6417 n_13 soc_can_tx_inst_shift_reg<27> VDD! VSS n_316 / NAND2X1
Xg10665__6260 n_7 n_66 VDD! VSS n_312 / NAND2X1
Xg10667__8428 n_13 soc_can_tx_inst_shift_reg<45> VDD! VSS n_310 / NAND2X1
Xg10668__5526 n_13 soc_can_tx_inst_shift_reg<46> VDD! VSS n_309 / NAND2X1
Xg10669__6783 n_13 soc_can_tx_inst_shift_reg<47> VDD! VSS n_308 / NAND2X1
Xg10670__3680 n_13 soc_can_tx_inst_shift_reg<13> VDD! VSS n_307 / NAND2X1
Xg10671__1617 n_13 soc_can_tx_inst_shift_reg<48> VDD! VSS n_306 / NAND2X1
Xg10673__1705 n_13 soc_can_tx_inst_shift_reg<49> VDD! VSS n_304 / NAND2X1
Xg10674__5122 n_13 soc_can_tx_inst_shift_reg<50> VDD! VSS n_303 / NAND2X1
Xg10676__7098 n_13 soc_can_tx_inst_shift_reg<51> VDD! VSS n_301 / NAND2X1
Xg10678__1881 n_13 soc_can_tx_inst_shift_reg<52> VDD! VSS n_299 / NAND2X1
Xg10679__5115 n_13 soc_can_tx_inst_shift_reg<53> VDD! VSS n_298 / NAND2X1
Xg10680__7482 n_13 soc_can_tx_inst_shift_reg<54> VDD! VSS n_297 / NAND2X1
Xg10681__4733 n_13 soc_can_tx_inst_shift_reg<55> VDD! VSS n_296 / NAND2X1
Xg10682__6161 n_13 soc_can_tx_inst_shift_reg<56> VDD! VSS n_295 / NAND2X1
Xg10683__9315 n_60 soc_can_tx_inst_state<1> VDD! VSS n_294 / NAND2X1
Xg10684__9945 n_13 soc_can_tx_inst_shift_reg<57> VDD! VSS n_293 / NAND2X1
Xg10685__2883 n_13 soc_can_tx_inst_shift_reg<18> VDD! VSS n_292 / NAND2X1
Xg10686__2346 n_13 soc_can_tx_inst_shift_reg<58> VDD! VSS n_291 / NAND2X1
Xg10687__1666 n_13 soc_can_tx_inst_shift_reg<59> VDD! VSS n_290 / NAND2X1
Xg10688__7410 n_13 soc_can_tx_inst_shift_reg<60> VDD! VSS n_289 / NAND2X1
Xg10689__6417 n_13 soc_can_tx_inst_shift_reg<61> VDD! VSS n_288 / NAND2X1
Xg10690__5477 n_13 soc_can_tx_inst_shift_reg<62> VDD! VSS n_287 / NAND2X1
Xg10691__2398 n_13 soc_can_tx_inst_shift_reg<63> VDD! VSS n_286 / NAND2X1
Xg10692__5107 n_13 soc_can_tx_inst_shift_reg<64> VDD! VSS n_285 / NAND2X1
Xg10693__6260 n_13 soc_can_tx_inst_shift_reg<26> VDD! VSS n_284 / NAND2X1
Xg10694__4319 n_13 soc_can_tx_inst_shift_reg<65> VDD! VSS n_283 / NAND2X1
Xg10695__8428 n_13 soc_can_tx_inst_shift_reg<66> VDD! VSS n_282 / NAND2X1
Xg10696__5526 n_13 soc_can_tx_inst_shift_reg<24> VDD! VSS n_281 / NAND2X1
Xg10697__6783 n_13 soc_can_tx_inst_shift_reg<68> VDD! VSS n_280 / NAND2X1
Xg10698__3680 n_13 soc_can_tx_inst_shift_reg<69> VDD! VSS n_279 / NAND2X1
Xg10699__1617 n_13 soc_can_tx_inst_shift_reg<70> VDD! VSS n_278 / NAND2X1
Xg10700__2802 n_13 soc_can_tx_inst_shift_reg<71> VDD! VSS n_277 / NAND2X1
Xg10701__1705 n_13 soc_can_tx_inst_shift_reg<72> VDD! VSS n_276 / NAND2X1
Xg10702__5122 n_13 soc_can_tx_inst_shift_reg<73> VDD! VSS n_275 / NAND2X1
Xg10703__8246 n_13 soc_can_tx_inst_shift_reg<75> VDD! VSS n_274 / NAND2X1
Xg10704__7098 n_13 soc_can_tx_inst_shift_reg<22> VDD! VSS n_273 / NAND2X1
Xg10705__6131 n_13 soc_can_tx_inst_shift_reg<76> VDD! VSS n_272 / NAND2X1
Xg10707__5115 n_13 soc_can_tx_inst_shift_reg<78> VDD! VSS n_270 / NAND2X1
Xg10708__7482 n_13 soc_can_tx_inst_shift_reg<79> VDD! VSS n_269 / NAND2X1
Xg10709__4733 n_13 soc_can_tx_inst_shift_reg<23> VDD! VSS n_268 / NAND2X1
Xg10710__6161 n_13 soc_can_tx_inst_shift_reg<80> VDD! VSS n_267 / NAND2X1
Xg10711__9315 n_13 soc_can_tx_inst_shift_reg<25> VDD! VSS n_266 / NAND2X1
Xg10712__9945 n_13 soc_can_tx_inst_shift_reg<83> VDD! VSS n_265 / NAND2X1
Xg10713__2883 n_13 soc_can_tx_inst_shift_reg<67> VDD! VSS n_264 / NAND2X1
Xg10714__2346 n_13 soc_can_tx_inst_shift_reg<84> VDD! VSS n_263 / NAND2X1
Xg10715__1666 n_13 soc_can_tx_inst_shift_reg<85> VDD! VSS n_262 / NAND2X1
Xg10716__7410 n_13 soc_can_tx_inst_shift_reg<87> VDD! VSS n_261 / NAND2X1
Xg10717__6417 n_13 soc_can_tx_inst_shift_reg<88> VDD! VSS n_260 / NAND2X1
Xg10718__5477 n_13 soc_can_tx_inst_shift_reg<89> VDD! VSS n_259 / NAND2X1
Xg10719__2398 n_13 soc_can_tx_inst_shift_reg<90> VDD! VSS n_258 / NAND2X1
Xg10720__5107 n_13 soc_can_tx_inst_shift_reg<91> VDD! VSS n_257 / NAND2X1
Xg10721__6260 n_13 soc_can_tx_inst_shift_reg<92> VDD! VSS n_256 / NAND2X1
Xg10722__4319 n_13 soc_can_tx_inst_shift_reg<93> VDD! VSS n_255 / NAND2X1
Xg10723__8428 n_13 soc_can_tx_inst_shift_reg<95> VDD! VSS n_254 / NAND2X1
Xg10724__5526 n_13 soc_can_tx_inst_shift_reg<96> VDD! VSS n_253 / NAND2X1
Xg10725__6783 n_13 soc_can_tx_inst_shift_reg<97> VDD! VSS n_252 / NAND2X1
Xg10726__3680 n_13 soc_can_tx_inst_shift_reg<99> VDD! VSS n_251 / NAND2X1
Xg10727__1617 n_13 soc_can_tx_inst_shift_reg<100> VDD! VSS n_250 / NAND2X1
Xg10728__2802 n_13 soc_can_tx_inst_shift_reg<101> VDD! VSS n_249 / NAND2X1
Xg10729__1705 n_13 soc_can_tx_inst_shift_reg<15> VDD! VSS n_248 / NAND2X1
Xg10730__5122 n_13 soc_can_tx_inst_shift_reg<103> VDD! VSS n_247 / NAND2X1
Xg10731__8246 n_13 soc_can_tx_inst_shift_reg<104> VDD! VSS n_246 / NAND2X1
Xg10732__7098 n_13 soc_can_tx_inst_shift_reg<105> VDD! VSS n_245 / NAND2X1
Xg10733__6131 n_13 soc_can_tx_inst_shift_reg<106> VDD! VSS n_244 / NAND2X1
Xg10735__5115 n_48 soc_uart_data_ready VDD! VSS n_242 / NAND2X1
Xg10736__7482 n_13 soc_can_tx_inst_status_reg<3> VDD! VSS n_241 / NAND2X1
Xg10737__4733 n_5 n_73 VDD! VSS n_240 / NAND2X1
Xg10738__6161 n_108 n_22 VDD! VSS n_239 / NAND2X1
Xg10741__2883 n_13 soc_can_tx_inst_shift_reg<77> VDD! VSS n_236 / NAND2X1
Xg10743__1666 n_13 soc_can_tx_inst_shift_reg<19> VDD! VSS n_234 / NAND2X1
Xg10744__7410 n_13 soc_can_tx_inst_shift_reg<81> VDD! VSS n_233 / NAND2X1
Xg10745__6417 n_13 soc_can_tx_inst_shift_reg<11> VDD! VSS n_232 / NAND2X1
Xg10746__5477 n_13 soc_can_tx_inst_shift_reg<94> VDD! VSS n_231 / NAND2X1
Xg10747__2398 n_13 soc_can_tx_inst_shift_reg<86> VDD! VSS n_230 / NAND2X1
Xg10748__5107 n_13 soc_can_tx_inst_shift_reg<12> VDD! VSS n_229 / NAND2X1
Xg10749__6260 n_13 soc_can_tx_inst_shift_reg<14> VDD! VSS n_228 / NAND2X1
Xg10750__4319 n_13 soc_can_tx_inst_shift_reg<16> VDD! VSS n_227 / NAND2X1
Xg10751__8428 n_13 soc_can_tx_inst_shift_reg<17> VDD! VSS n_226 / NAND2X1
Xg10752__5526 n_13 soc_can_tx_inst_shift_reg<20> VDD! VSS n_225 / NAND2X1
Xg10753__6783 n_13 soc_can_tx_inst_shift_reg<21> VDD! VSS n_224 / NAND2X1
Xg10755__1617 n_13 soc_can_tx_inst_shift_reg<102> VDD! VSS n_222 / NAND2X1
Xg10760__7098 n_74 n_7 VDD! VSS n_328 / NAND2X1
Xg10762__1881 n_69 soc_uart_rx_inst_bit_count<1> VDD! VSS n_326 / NAND2X1
Xg10767__9315 n_13 soc_can_tx_inst_shift_reg<30> VDD! VSS n_215 / NAND2X1
Xg10768__9945 n_13 soc_can_tx_inst_shift_reg<31> VDD! VSS n_214 / NAND2X1
Xg10769__2883 n_13 soc_can_tx_inst_shift_reg<32> VDD! VSS n_213 / NAND2X1
Xg10770__2346 n_13 soc_can_tx_inst_shift_reg<33> VDD! VSS n_212 / NAND2X1
Xg10771__1666 n_13 soc_can_tx_inst_shift_reg<34> VDD! VSS n_211 / NAND2X1
Xg10772__7410 n_13 soc_can_tx_inst_shift_reg<35> VDD! VSS n_210 / NAND2X1
Xg10774__5477 n_13 soc_can_tx_inst_shift_reg<74> VDD! VSS n_208 / NAND2X1
Xg10775__2398 n_13 soc_can_tx_inst_shift_reg<36> VDD! VSS n_207 / NAND2X1
Xg10776__5107 n_13 soc_can_tx_inst_shift_reg<37> VDD! VSS n_206 / NAND2X1
Xg10777__6260 n_13 soc_can_tx_inst_shift_reg<38> VDD! VSS n_205 / NAND2X1
Xg10778__4319 n_13 soc_can_tx_inst_shift_reg<39> VDD! VSS n_204 / NAND2X1
Xg10779__8428 n_13 soc_can_tx_inst_shift_reg<40> VDD! VSS n_203 / NAND2X1
Xg10780__5526 n_13 soc_can_tx_inst_shift_reg<98> VDD! VSS n_202 / NAND2X1
Xg10781__6783 n_13 soc_can_tx_inst_shift_reg<41> VDD! VSS n_201 / NAND2X1
Xg10783__1617 n_13 soc_can_tx_inst_shift_reg<42> VDD! VSS n_199 / NAND2X1
Xg10784__2802 n_13 soc_can_tx_inst_shift_reg<43> VDD! VSS n_198 / NAND2X1
Xg10785__1705 n_13 soc_can_tx_inst_shift_reg<44> VDD! VSS n_197 / NAND2X1
Xg10786__5122 soc_uart_rx_inst_state<1> n_70 VDD! VSS n_196 / NAND2X1
Xg10820__7482 n_13 soc_can_tx_inst_shift_reg<29> VDD! VSS n_162 / NAND2X1
Xg10874__1881 n_97 n_72 VDD! VSS n_217 / NAND2X1
Xg10886__7482 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<7> VDD! VSS 
+ n_101 / NAND2X1
Xg10887__4733 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<8> VDD! VSS 
+ n_100 / NAND2X1
Xg10890__9945 n_840 n_23 VDD! VSS n_97 / NAND2X1
Xg10891__2883 n_21 soc_uart_tx_data_Bus<6> VDD! VSS n_96 / NAND2X1
Xg10892__2346 n_21 soc_uart_tx_data_Bus<7> VDD! VSS n_95 / NAND2X1
Xg10893__1666 n_21 soc_uart_tx_data_Bus<5> VDD! VSS n_94 / NAND2X1
Xg10894__7410 n_21 soc_uart_tx_data_Bus<4> VDD! VSS n_93 / NAND2X1
Xg10895__6417 n_21 soc_uart_tx_data_Bus<3> VDD! VSS n_92 / NAND2X1
Xg10896__5477 n_21 soc_uart_tx_data_Bus<1> VDD! VSS n_91 / NAND2X1
Xg10897__2398 n_21 soc_Load_XMT_datareg VDD! VSS n_90 / NAND2X1
Xg10898__5107 n_21 soc_uart_tx_data_Bus<2> VDD! VSS n_89 / NAND2X1
Xg10899__6260 n_21 soc_uart_tx_data_Bus<0> VDD! VSS n_88 / NAND2X1
Xg10903__5526 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<8> VDD! VSS 
+ n_85 / NAND2X1
Xg10904__6783 n_840 soc_can_data_ready VDD! VSS n_84 / NAND2X1
Xg10905__3680 soc_uart_rx_inst_state<0> n_23 VDD! VSS n_83 / NAND2X1
Xg10906__1617 n_5 soc_can_tx_inst_shift_reg<106> VDD! VSS n_82 / NAND2X1
Xg10907__2802 n_5 soc_can_tx_inst_shift_reg<103> VDD! VSS n_81 / NAND2X1
Xg10908__1705 n_5 soc_can_tx_inst_shift_reg<104> VDD! VSS n_80 / NAND2X1
Xg10909__5122 n_5 soc_can_tx_inst_shift_reg<105> VDD! VSS n_79 / NAND2X1
Xg10910__8246 n_5 soc_can_tx_inst_shift_reg<99> VDD! VSS n_78 / NAND2X1
Xg10911__7098 n_5 soc_can_tx_inst_shift_reg<102> VDD! VSS n_77 / NAND2X1
Xg10912__6131 n_5 soc_can_tx_inst_shift_reg<10> VDD! VSS n_76 / NAND2X1
Xg10915__5115 soc_uart_rx_inst_state<1> n_23 VDD! VSS n_108 / NAND2X1
Xg10917__7482 soc_uart_rx_inst_state<1> n_22 VDD! VSS n_107 / NAND2X1
Xg10925__2883 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<2> VDD! VSS 
+ n_61 / NAND2X1
Xg10927__1666 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<4> VDD! VSS 
+ n_59 / NAND2X1
Xg10928__7410 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<7> VDD! VSS 
+ n_58 / NAND2X1
Xg10929__6417 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<6> VDD! VSS 
+ n_57 / NAND2X1
Xg10930__5477 soc_can_tx_inst_shift_reg<6> soc_can_tx_inst_state<1> VDD! VSS 
+ n_56 / NAND2X1
Xg10931__2398 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<1> VDD! VSS 
+ n_55 / NAND2X1
Xg10932__5107 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<3> VDD! VSS 
+ n_54 / NAND2X1
Xg10933__6260 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<5> VDD! VSS 
+ n_53 / NAND2X1
Xg10934__4319 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<3> VDD! VSS 
+ n_52 / NAND2X1
Xg10935__8428 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<6> VDD! VSS 
+ n_51 / NAND2X1
Xg10936__5526 soc_can_tx_inst_shift_reg<3> soc_can_tx_inst_state<1> VDD! VSS 
+ n_50 / NAND2X1
Xg10937__6783 soc_can_tx_inst_shift_reg<7> soc_can_tx_inst_state<1> VDD! VSS 
+ n_49 / NAND2X1
Xg10938__3680 n_30 n_22 VDD! VSS n_48 / NAND2X1
Xg10939__1617 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<9> VDD! VSS 
+ n_47 / NAND2X1
Xg10940__2802 soc_can_tx_inst_shift_reg<9> soc_can_tx_inst_state<1> VDD! VSS 
+ n_46 / NAND2X1
Xg10942__5122 soc_can_rx_inst_bit_count<4> soc_can_rx_inst_bit_count<5> VDD! 
+ VSS n_44 / NAND2X1
Xg10943__8246 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<2> VDD! VSS 
+ n_43 / NAND2X1
Xg10945__6131 soc_uart_tx_inst_state<0> soc_uart_tx_inst_shift_reg<5> VDD! VSS 
+ n_41 / NAND2X1
Xg10946__1881 soc_uart_tx_inst_state<1> soc_uart_tx_inst_shift_reg<4> VDD! VSS 
+ n_40 / NAND2X1
Xg10948__7482 soc_can_tx_inst_shift_reg<1> soc_can_tx_inst_state<1> VDD! VSS 
+ n_38 / NAND2X1
Xg10950__6161 soc_can_tx_inst_shift_reg<8> soc_can_tx_inst_state<1> VDD! VSS 
+ n_36 / NAND2X1
Xg10951__9315 soc_can_tx_inst_shift_reg<10> soc_can_tx_inst_state<1> VDD! VSS 
+ n_35 / NAND2X1
Xg10952__9945 soc_Load_frame_datareg soc_Can_ID_Bus<0> VDD! VSS n_73 / NAND2X1
Xg10953__2883 soc_can_rx_inst_state<1> soc_can_rx_inst_state<2> VDD! VSS n_72 
+ / NAND2X1
Xg10954__2346 soc_can_tx_inst_status_reg<5> soc_can_tx_inst_status_reg<4> VDD! 
+ VSS n_71 / NAND2X1
Xg10957__6417 n_830 soc_uart_tx_inst_n_126 VDD! VSS n_67 / NAND2X1
Xg2 soc_can_rx_inst_n_1142 n_32 VDD! VSS n_840 / NAND2X1
Xg11073 soc_can_rx_inst_bit_count<0> soc_can_rx_inst_bit_count<1> VDD! VSS 
+ n_845 / NAND2X1
Xg4317__6783 soc_Can_ID_Bus<0> soc_can_tx_inst_state<1> VDD! VSS n_829 / OR2X1
Xg4320__2802 tbyte_PAD soc_uart_tx_inst_state<1> VDD! VSS n_828 / OR2X1
Xg4605__7098 rbyte_PAD soc_can_rx_inst_n_1142 VDD! VSS n_794 / OR2X1
Xg10097__5477 n_42 n_650 VDD! VSS n_744 / OR2X1
Xg10102__8428 n_311 n_650 VDD! VSS n_739 / OR2X1
Xg10176__3680 n_120 n_474 VDD! VSS n_679 / OR2X1
Xg10178__2802 n_121 n_474 VDD! VSS n_677 / OR2X1
Xg10180__5122 n_122 n_474 VDD! VSS n_675 / OR2X1
Xg10314__5477 soc_can_rx_inst_n_1142 n_341 VDD! VSS n_574 / OR2X1
Xg10316__5107 soc_Can_ID_Bus<0> n_366 VDD! VSS n_572 / OR2X1
Xg10408__2802 n_193 n_14 VDD! VSS n_480 / OR2X1
Xg10433__5107 n_111 n_14 VDD! VSS n_460 / OR2X1
Xg10440__1617 n_14 n_110 VDD! VSS n_453 / OR2X1
Xg10464__8428 n_62 n_366 VDD! VSS n_429 / OR2X1
Xg10608__9945 n_326 n_191 VDD! VSS n_351 / OR2X1
Xg10658__2346 soc_uart_tx_inst_Status_reg<0> n_99 VDD! VSS n_319 / OR2X1
Xg10677__6131 n_102 n_67 VDD! VSS n_300 / OR2X1
Xg10888__6161 soc_uart_tx_inst_Status_reg<1> soc_uart_tx_inst_Status_reg<2> 
+ VDD! VSS n_99 / OR2X1
Xg10889__9315 n_30 soc_uart_rx_inst_bit_count<2> VDD! VSS n_98 / OR2X1
Xg10900__4319 n_8 n_828 VDD! VSS n_87 / OR2X1
Xg10901__8428 n_7 n_829 VDD! VSS n_86 / OR2X1
Xg10926__2346 soc_can_tx_inst_status_reg<0> soc_can_tx_inst_state<0> VDD! VSS 
+ n_60 / OR2X1
Xg10941__1705 soc_can_tx_inst_status_reg<1> soc_can_tx_inst_status_reg<2> VDD! 
+ VSS n_45 / OR2X1
Xg3 n_107 n_326 VDD! VSS n_842 / OR2X1
Xg11069 soc_can_rx_inst_state<2> VDD! VSS soc_can_rx_inst_n_1142 / INVX1
Xg4 n_843 VDD! VSS n_844 / INVX1
Xg4314 n_21 VDD! VSS soc_uart_tx_inst_n_126 / INVX2
Xg4607 n_793 VDD! VSS soc_can_rx_inst_n_1158 / INVX2
Xg4624 rst_PAD VDD! VSS n_19 / INVX2
Xg4628 soc_can_rx_inst_state<1> VDD! VSS n_32 / INVX2
Xg10656 n_323 VDD! VSS n_322 / INVX2
Xg10875 n_107 VDD! VSS n_106 / INVX2
Xg10876 n_105 VDD! VSS n_104 / INVX2
Xg10883 n_13 VDD! VSS n_11 / INVX2
Xg10920 n_73 VDD! VSS n_74 / INVX2
Xg10921 n_69 VDD! VSS n_70 / INVX2
Xg10922 n_65 VDD! VSS n_66 / INVX2
Xg10960 soc_uart_rx_inst_bit_count<3> VDD! VSS n_34 / INVX2
Xg10976 soc_can_rx_inst_bit_count<3> VDD! VSS n_31 / INVX2
Xg10978 soc_uart_rx_inst_state<1> VDD! VSS n_30 / INVX2
Xg10983 soc_uart_tx_inst_state<0> VDD! VSS n_8 / INVX2
Xg10990 soc_can_tx_inst_state<0> VDD! VSS n_7 / INVX2
Xg11032 ser_rx_PAD VDD! VSS n_27 / INVX2
Xg11042 soc_can_rx_inst_bit_count<2> VDD! VSS n_24 / INVX2
Xg11046 rbyte_PAD VDD! VSS n_23 / INVX2
Xg11047 soc_uart_rx_inst_state<0> VDD! VSS n_22 / INVX2
Xg11050 soc_uart_tx_inst_state<1> VDD! VSS n_20 / INVX2
XFE_DBTC0_n_329 n_329 VDD! VSS FE_DBTN0_n_329 / INVX8
Xg10598 n_14 VDD! VSS n_15 / INVX8
Xg11006 soc_can_tx_inst_state<1> VDD! VSS n_5 / INVX8
Xg10462__6260 soc_can_rx_inst_bit_count<6> n_109 VDD! VSS n_431 / XOR2X1
Xg10526__1705 soc_uart_tx_inst_Status_reg<3> n_324 VDD! VSS n_367 / XOR2X1
Xg10599__8246 soc_can_rx_inst_bit_count<3> n_75 VDD! VSS n_360 / XOR2X1
Xg10600__7098 soc_uart_tx_inst_Status_reg<0> n_105 VDD! VSS n_359 / XOR2X1
Xg10782__3680 soc_can_rx_inst_bit_count<0> soc_can_rx_inst_bit_count<1> VDD! 
+ VSS n_200 / XOR2X1
Xg10789__6131 soc_can_rx_inst_bit_count<2> n_845 VDD! VSS n_193 / XOR2X1
Xg10871__8246 soc_can_rx_inst_bit_count<4> soc_can_rx_inst_n_1158 VDD! VSS 
+ n_111 / XOR2X1
Xg10872__7098 soc_can_rx_inst_bit_count<5> soc_can_rx_inst_n_1161 VDD! VSS 
+ n_110 / XOR2X1
Xg4310__2398 n_822 n_830 n_828 VDD! VSS VDD! / NAND3X1
Xg4311__5107 n_821 n_831 n_829 VDD! VSS VDD! / NAND3X1
Xg4582__5122 VDD! n_794 n_789 VDD! VSS VSS / NAND3X1
Xg10080__1705 n_525 n_537 n_264 VDD! VSS n_761 / NAND3X1
Xg10082__8246 n_389 n_559 n_310 VDD! VSS n_759 / NAND3X1
Xg10083__7098 n_390 n_496 n_197 VDD! VSS n_758 / NAND3X1
Xg10084__6131 n_391 n_497 n_198 VDD! VSS n_757 / NAND3X1
Xg10085__1881 n_392 n_498 n_199 VDD! VSS n_756 / NAND3X1
Xg10086__5115 n_393 n_499 n_201 VDD! VSS n_755 / NAND3X1
Xg10087__7482 n_394 n_500 n_203 VDD! VSS n_754 / NAND3X1
Xg10088__4733 n_395 n_501 n_204 VDD! VSS n_753 / NAND3X1
Xg10089__6161 n_396 n_502 n_205 VDD! VSS n_752 / NAND3X1
Xg10090__9315 n_397 n_503 n_206 VDD! VSS n_751 / NAND3X1
Xg10091__9945 n_398 n_504 n_207 VDD! VSS n_750 / NAND3X1
Xg10092__2883 n_399 n_505 n_210 VDD! VSS n_749 / NAND3X1
Xg10093__2346 n_400 n_506 n_211 VDD! VSS n_748 / NAND3X1
Xg10094__1666 n_401 n_507 n_212 VDD! VSS n_747 / NAND3X1
Xg10101__4319 n_17 n_644 n_86 VDD! VSS n_740 / NAND3X1
Xg10103__5526 n_495 n_558 n_309 VDD! VSS n_738 / NAND3X1
Xg10104__6783 n_494 n_557 n_308 VDD! VSS n_737 / NAND3X1
Xg10105__3680 n_493 n_556 n_306 VDD! VSS n_736 / NAND3X1
Xg10106__1617 n_492 n_555 n_304 VDD! VSS n_735 / NAND3X1
Xg10107__2802 n_491 n_554 n_303 VDD! VSS n_734 / NAND3X1
Xg10108__1705 n_490 n_553 n_301 VDD! VSS n_733 / NAND3X1
Xg10109__5122 n_489 n_552 n_299 VDD! VSS n_732 / NAND3X1
Xg10110__8246 n_488 n_551 n_298 VDD! VSS n_731 / NAND3X1
Xg10111__7098 n_487 n_550 n_297 VDD! VSS n_730 / NAND3X1
Xg10112__6131 n_486 n_549 n_296 VDD! VSS n_729 / NAND3X1
Xg10113__1881 n_485 n_548 n_295 VDD! VSS n_728 / NAND3X1
Xg10114__5115 n_483 n_547 n_293 VDD! VSS n_727 / NAND3X1
Xg10115__7482 n_482 n_546 n_291 VDD! VSS n_726 / NAND3X1
Xg10116__4733 n_481 n_545 n_290 VDD! VSS n_725 / NAND3X1
Xg10117__6161 n_479 n_544 n_289 VDD! VSS n_724 / NAND3X1
Xg10118__9315 n_478 n_543 n_288 VDD! VSS n_723 / NAND3X1
Xg10119__9945 n_477 n_542 n_287 VDD! VSS n_722 / NAND3X1
Xg10120__2883 n_476 n_541 n_286 VDD! VSS n_721 / NAND3X1
Xg10121__2346 n_475 n_540 n_285 VDD! VSS n_720 / NAND3X1
Xg10122__1666 n_573 n_539 n_283 VDD! VSS n_719 / NAND3X1
Xg10123__7410 n_575 n_538 n_282 VDD! VSS n_718 / NAND3X1
Xg10124__6417 n_402 n_508 n_213 VDD! VSS n_717 / NAND3X1
Xg10125__5477 n_473 n_536 n_280 VDD! VSS n_716 / NAND3X1
Xg10126__2398 n_472 n_535 n_279 VDD! VSS n_715 / NAND3X1
Xg10127__5107 n_470 n_534 n_278 VDD! VSS n_714 / NAND3X1
Xg10128__6260 n_469 n_533 n_277 VDD! VSS n_713 / NAND3X1
Xg10129__4319 n_468 n_532 n_276 VDD! VSS n_712 / NAND3X1
Xg10130__8428 n_466 n_531 n_275 VDD! VSS n_711 / NAND3X1
Xg10131__5526 n_465 n_530 n_208 VDD! VSS n_710 / NAND3X1
Xg10132__6783 n_464 n_529 n_274 VDD! VSS n_709 / NAND3X1
Xg10133__3680 n_463 n_528 n_272 VDD! VSS n_708 / NAND3X1
Xg10134__1617 n_462 n_527 n_236 VDD! VSS n_707 / NAND3X1
Xg10135__2802 n_461 n_526 n_270 VDD! VSS n_706 / NAND3X1
Xg10136__1705 n_459 n_576 n_269 VDD! VSS n_705 / NAND3X1
Xg10137__5122 n_458 n_524 n_267 VDD! VSS n_704 / NAND3X1
Xg10138__8246 n_457 n_523 n_233 VDD! VSS n_703 / NAND3X1
Xg10139__7098 n_456 n_522 n_320 VDD! VSS n_702 / NAND3X1
Xg10140__6131 n_455 n_521 n_265 VDD! VSS n_701 / NAND3X1
Xg10141__1881 n_454 n_520 n_263 VDD! VSS n_700 / NAND3X1
Xg10142__5115 n_417 n_519 n_224 VDD! VSS n_699 / NAND3X1
Xg10143__7482 n_416 n_518 n_273 VDD! VSS n_698 / NAND3X1
Xg10144__4733 n_415 n_517 n_268 VDD! VSS n_697 / NAND3X1
Xg10145__6161 n_413 n_516 n_281 VDD! VSS n_696 / NAND3X1
Xg10146__9315 n_410 n_515 n_266 VDD! VSS n_695 / NAND3X1
Xg10147__9945 n_409 n_514 n_284 VDD! VSS n_694 / NAND3X1
Xg10148__2883 n_408 n_513 n_316 VDD! VSS n_693 / NAND3X1
Xg10149__2346 n_406 n_512 n_318 VDD! VSS n_692 / NAND3X1
Xg10150__1666 n_405 n_511 n_162 VDD! VSS n_691 / NAND3X1
Xg10151__7410 n_404 n_510 n_215 VDD! VSS n_690 / NAND3X1
Xg10152__6417 n_403 n_509 n_214 VDD! VSS n_689 / NAND3X1
Xg10244__6131 n_345 n_13 soc_can_tx_inst_status_reg<6> VDD! VSS n_644 / NAND3X1
Xg10245__1881 n_567 n_831 n_38 VDD! VSS n_643 / NAND3X1
Xg10246__5115 n_566 n_831 n_50 VDD! VSS n_642 / NAND3X1
Xg10247__7482 n_565 n_831 n_56 VDD! VSS n_641 / NAND3X1
Xg10248__4733 n_564 n_831 n_49 VDD! VSS n_640 / NAND3X1
Xg10249__6161 n_563 n_831 n_36 VDD! VSS n_639 / NAND3X1
Xg10250__9315 n_562 n_831 n_46 VDD! VSS n_638 / NAND3X1
Xg10251__9945 n_561 n_831 n_35 VDD! VSS n_637 / NAND3X1
Xg10252__2883 n_90 n_87 n_354 VDD! VSS n_636 / NAND3X1
Xg10404__5526 n_95 n_830 n_305 VDD! VSS n_484 / NAND3X1
Xg10426__2883 n_93 n_830 n_219 VDD! VSS n_467 / NAND3X1
Xg10461__5107 n_92 n_830 n_220 VDD! VSS n_432 / NAND3X1
Xg10463__4319 n_334 n_317 n_83 VDD! VSS n_430 / NAND3X1
Xg10470__1705 n_89 n_830 n_221 VDD! VSS n_423 / NAND3X1
Xg10475__1881 n_88 n_830 n_223 VDD! VSS n_418 / NAND3X1
Xg10479__6161 n_94 n_830 n_218 VDD! VSS n_414 / NAND3X1
Xg10481__9945 n_96 n_830 n_238 VDD! VSS n_412 / NAND3X1
Xg10486__6417 n_91 n_830 n_209 VDD! VSS n_407 / NAND3X1
Xg10507__6161 n_17 n_250 n_78 VDD! VSS n_386 / NAND3X1
Xg10508__9315 n_17 n_247 n_77 VDD! VSS n_385 / NAND3X1
Xg10509__9945 n_17 n_246 n_81 VDD! VSS n_384 / NAND3X1
Xg10510__2883 n_17 n_245 n_80 VDD! VSS n_383 / NAND3X1
Xg10511__2346 n_17 n_244 n_79 VDD! VSS n_382 / NAND3X1
Xg10512__1666 n_108 n_107 n_190 VDD! VSS n_381 / NAND3X1
Xg10513__7410 n_17 n_232 n_76 VDD! VSS n_380 / NAND3X1
Xg10605__4733 n_105 n_319 soc_uart_tx_inst_Status_reg<3> VDD! VSS n_354 / 
+ NAND3X1
Xg10618__4319 n_271 n_32 soc_can_rx_inst_bit_count<6> VDD! VSS n_341 / NAND3X1
Xg10651__4733 soc_uart_rx_inst_state<1> soc_uart_rx_inst_state<0> n_39 VDD! 
+ VSS n_363 / NAND3X1
Xg10654__9945 n_840 n_72 rbyte_PAD VDD! VSS n_14 / NAND3X1
Xg10660__7410 n_30 n_22 n_27 VDD! VSS n_317 / NAND3X1
Xg10706__1881 n_845 n_31 n_24 VDD! VSS n_271 / NAND3X1
Xg10787__8246 n_5 soc_can_tx_inst_state<0> soc_Can_ID_Bus<0> VDD! VSS n_195 / 
+ NAND3X1
Xg10788__7098 soc_can_rx_inst_state<2> soc_can_rx_inst_state<1> rbyte_PAD VDD! 
+ VSS n_194 / NAND3X1
Xg10790__1881 soc_can_tx_inst_status_reg<5> soc_can_tx_inst_status_reg<3> n_45 
+ VDD! VSS n_192 / NAND3X1
Xg10791__5115 n_106 soc_uart_rx_inst_bit_count<2> n_34 VDD! VSS n_191 / NAND3X1
Xg10792__7482 n_30 soc_uart_rx_inst_state<0> rbyte_PAD VDD! VSS n_190 / NAND3X1
Xg10793__4733 soc_uart_tx_inst_state<0> n_20 tbyte_PAD VDD! VSS n_189 / NAND3X1
Xg10590 n_16 VDD! VSS n_17 / INVX4
Xsoc_Bridge_Can_out_reg clock VDD! can_tx_PAD n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_Bridge_Serial_out_reg clock VDD! ser_tx_PAD n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_Can_ID_Bus_reg[0] clock n_572 soc_Can_ID_Bus<0> VDD! n_19 VDD! VSS / 
+ DFFQSRX1
Xsoc_Load_XMT_datareg_reg clock soc_can_data_ready soc_Load_XMT_datareg VDD! 
+ n_19 VDD! VSS / DFFQSRX1
Xsoc_Load_frame_datareg_reg clock n_429 soc_Load_frame_datareg VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_index_reg[0] clock n_187 soc_can_index<0> VDD! n_19 VDD! VSS / 
+ DFFQSRX1
Xsoc_can_index_reg[1] clock n_356 soc_can_index<1> VDD! n_19 VDD! VSS / 
+ DFFQSRX1
Xsoc_can_index_reg[2] clock n_379 soc_can_index<2> VDD! n_19 VDD! VSS / 
+ DFFQSRX1
Xsoc_can_rx_inst_Can_data_ready_reg clock n_331 soc_can_data_ready VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[0] clock n_765 soc_Can_rx_data_Bus<0> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[1] clock n_767 soc_Can_rx_data_Bus<1> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[2] clock n_766 soc_Can_rx_data_Bus<2> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[3] clock n_764 soc_Can_rx_data_Bus<3> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[4] clock n_762 soc_Can_rx_data_Bus<4> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[5] clock n_763 soc_Can_rx_data_Bus<5> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[6] clock n_772 soc_Can_rx_data_Bus<6> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_Can_rx_data_Bus_reg[7] clock n_773 soc_Can_rx_data_Bus<7> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_bit_count_reg[0] clock n_649 soc_can_rx_inst_bit_count<0> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_bit_count_reg[1] clock n_687 soc_can_rx_inst_bit_count<1> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_bit_count_reg[2] clock n_651 soc_can_rx_inst_bit_count<2> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_bit_count_reg[3] clock n_652 soc_can_rx_inst_bit_count<3> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_bit_count_reg[4] clock n_654 soc_can_rx_inst_bit_count<4> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_bit_count_reg[5] clock n_655 soc_can_rx_inst_bit_count<5> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_bit_count_reg[6] clock n_746 soc_can_rx_inst_bit_count<6> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[60] clock n_607 soc_can_rx_inst_shift_reg<60> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[61] clock n_604 soc_can_rx_inst_shift_reg<61> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[62] clock n_601 soc_can_rx_inst_shift_reg<62> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[63] clock n_599 soc_can_rx_inst_shift_reg<63> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[64] clock n_596 soc_can_rx_inst_shift_reg<64> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[65] clock n_594 soc_can_rx_inst_shift_reg<65> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[66] clock n_591 soc_can_rx_inst_shift_reg<66> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[67] clock n_590 soc_can_rx_inst_shift_reg<67> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[68] clock n_589 soc_can_rx_inst_shift_reg<68> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[69] clock n_588 soc_can_rx_inst_shift_reg<69> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[70] clock n_587 soc_can_rx_inst_shift_reg<70> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[71] clock n_586 soc_can_rx_inst_shift_reg<71> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[72] clock n_585 soc_can_rx_inst_shift_reg<72> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[73] clock n_584 soc_can_rx_inst_shift_reg<73> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[74] clock n_583 soc_can_rx_inst_shift_reg<74> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[75] clock n_582 soc_can_rx_inst_shift_reg<75> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[76] clock n_581 soc_can_rx_inst_shift_reg<76> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[77] clock n_580 soc_can_rx_inst_shift_reg<77> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[78] clock n_626 soc_can_rx_inst_shift_reg<78> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[79] clock n_625 soc_can_rx_inst_shift_reg<79> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[80] clock n_624 soc_can_rx_inst_shift_reg<80> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[81] clock n_623 soc_can_rx_inst_shift_reg<81> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[82] clock n_621 soc_can_rx_inst_shift_reg<82> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[83] clock n_622 soc_can_rx_inst_shift_reg<83> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[84] clock n_620 soc_can_rx_inst_shift_reg<84> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[85] clock n_619 soc_can_rx_inst_shift_reg<85> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[86] clock n_618 soc_can_rx_inst_shift_reg<86> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[87] clock n_617 soc_can_rx_inst_shift_reg<87> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[88] clock n_616 soc_can_rx_inst_shift_reg<88> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[89] clock n_615 soc_can_rx_inst_shift_reg<89> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[90] clock n_614 soc_can_rx_inst_shift_reg<90> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[91] clock n_613 soc_can_rx_inst_shift_reg<91> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[92] clock n_612 soc_can_rx_inst_shift_reg<92> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[93] clock n_611 soc_can_rx_inst_shift_reg<93> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[94] clock n_610 soc_can_rx_inst_shift_reg<94> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[95] clock n_609 soc_can_rx_inst_shift_reg<95> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[96] clock n_608 soc_can_rx_inst_shift_reg<96> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[97] clock n_606 soc_can_rx_inst_shift_reg<97> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[98] clock n_605 soc_can_rx_inst_shift_reg<98> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[99] clock n_603 soc_can_rx_inst_shift_reg<99> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[100] clock n_602 soc_can_rx_inst_shift_reg<100> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[101] clock n_600 soc_can_rx_inst_shift_reg<101> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[102] clock n_598 soc_can_rx_inst_shift_reg<102> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[103] clock n_597 soc_can_rx_inst_shift_reg<103> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[104] clock n_595 soc_can_rx_inst_shift_reg<104> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[105] clock n_593 soc_can_rx_inst_shift_reg<105> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_shift_reg_reg[106] clock n_592 soc_can_rx_inst_shift_reg<106> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_state_reg[1] clock VSS soc_can_rx_inst_state<1> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_rx_inst_state_reg[2] clock VSS soc_can_rx_inst_state<2> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[0] clock n_139 soc_can_tx_data_bus<0> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[1] clock n_164 soc_can_tx_data_bus<1> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[2] clock n_177 soc_can_tx_data_bus<2> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[3] clock n_148 soc_can_tx_data_bus<3> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[4] clock n_133 soc_can_tx_data_bus<4> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[5] clock n_145 soc_can_tx_data_bus<5> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[6] clock n_185 soc_can_tx_data_bus<6> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[7] clock n_136 soc_can_tx_data_bus<7> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[8] clock n_134 soc_can_tx_data_bus<8> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[9] clock n_132 soc_can_tx_data_bus<9> VDD! n_19 VDD! 
+ VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[10] clock n_130 soc_can_tx_data_bus<10> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[11] clock n_129 soc_can_tx_data_bus<11> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[12] clock n_128 soc_can_tx_data_bus<12> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[13] clock n_127 soc_can_tx_data_bus<13> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[14] clock n_126 soc_can_tx_data_bus<14> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[15] clock n_125 soc_can_tx_data_bus<15> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[16] clock n_124 soc_can_tx_data_bus<16> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[17] clock n_123 soc_can_tx_data_bus<17> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[18] clock n_135 soc_can_tx_data_bus<18> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[19] clock n_137 soc_can_tx_data_bus<19> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[20] clock n_186 soc_can_tx_data_bus<20> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[21] clock n_184 soc_can_tx_data_bus<21> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[22] clock n_183 soc_can_tx_data_bus<22> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[23] clock n_182 soc_can_tx_data_bus<23> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[24] clock n_180 soc_can_tx_data_bus<24> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[25] clock n_179 soc_can_tx_data_bus<25> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[26] clock n_178 soc_can_tx_data_bus<26> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[27] clock n_176 soc_can_tx_data_bus<27> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[28] clock n_161 soc_can_tx_data_bus<28> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[29] clock n_174 soc_can_tx_data_bus<29> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[30] clock n_172 soc_can_tx_data_bus<30> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[31] clock n_171 soc_can_tx_data_bus<31> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[32] clock n_181 soc_can_tx_data_bus<32> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[33] clock n_169 soc_can_tx_data_bus<33> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[34] clock n_168 soc_can_tx_data_bus<34> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[35] clock n_167 soc_can_tx_data_bus<35> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[36] clock n_163 soc_can_tx_data_bus<36> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[37] clock n_166 soc_can_tx_data_bus<37> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[38] clock n_175 soc_can_tx_data_bus<38> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[39] clock n_143 soc_can_tx_data_bus<39> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[40] clock n_216 soc_can_tx_data_bus<40> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[41] clock n_142 soc_can_tx_data_bus<41> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[42] clock n_160 soc_can_tx_data_bus<42> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[43] clock n_159 soc_can_tx_data_bus<43> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[44] clock n_173 soc_can_tx_data_bus<44> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[45] clock n_157 soc_can_tx_data_bus<45> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[46] clock n_144 soc_can_tx_data_bus<46> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[47] clock n_156 soc_can_tx_data_bus<47> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[48] clock n_141 soc_can_tx_data_bus<48> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[49] clock n_155 soc_can_tx_data_bus<49> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[50] clock n_153 soc_can_tx_data_bus<50> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[51] clock n_152 soc_can_tx_data_bus<51> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[52] clock n_140 soc_can_tx_data_bus<52> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[53] clock n_151 soc_can_tx_data_bus<53> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[54] clock n_149 soc_can_tx_data_bus<54> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[55] clock n_131 soc_can_tx_data_bus<55> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[56] clock n_138 soc_can_tx_data_bus<56> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[57] clock n_146 soc_can_tx_data_bus<57> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[58] clock n_150 soc_can_tx_data_bus<58> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[59] clock n_154 soc_can_tx_data_bus<59> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[60] clock n_158 soc_can_tx_data_bus<60> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[61] clock n_165 soc_can_tx_data_bus<61> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[62] clock n_170 soc_can_tx_data_bus<62> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_data_bus_reg[63] clock n_147 soc_can_tx_data_bus<63> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[0] clock n_643 soc_can_tx_inst_shift_reg<0> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[1] clock n_675 soc_can_tx_inst_shift_reg<1> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[2] clock n_642 soc_can_tx_inst_shift_reg<2> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[3] clock n_677 soc_can_tx_inst_shift_reg<3> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[4] clock n_679 soc_can_tx_inst_shift_reg<4> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[5] clock n_641 soc_can_tx_inst_shift_reg<5> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[6] clock n_640 soc_can_tx_inst_shift_reg<6> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[7] clock n_639 soc_can_tx_inst_shift_reg<7> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[8] clock n_638 soc_can_tx_inst_shift_reg<8> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[9] clock n_637 soc_can_tx_inst_shift_reg<9> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[10] clock n_380 soc_can_tx_inst_shift_reg<10> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[11] clock n_680 soc_can_tx_inst_shift_reg<11> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[12] clock n_681 soc_can_tx_inst_shift_reg<12> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[13] clock n_682 soc_can_tx_inst_shift_reg<13> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[14] clock n_683 soc_can_tx_inst_shift_reg<14> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[15] clock n_684 soc_can_tx_inst_shift_reg<15> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[16] clock n_685 soc_can_tx_inst_shift_reg<16> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[17] clock n_646 soc_can_tx_inst_shift_reg<17> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[18] clock n_648 soc_can_tx_inst_shift_reg<18> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[19] clock n_647 soc_can_tx_inst_shift_reg<19> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[20] clock n_699 soc_can_tx_inst_shift_reg<20> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[21] clock n_698 soc_can_tx_inst_shift_reg<21> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[22] clock n_697 soc_can_tx_inst_shift_reg<22> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[23] clock n_696 soc_can_tx_inst_shift_reg<23> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[24] clock n_695 soc_can_tx_inst_shift_reg<24> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[25] clock n_694 soc_can_tx_inst_shift_reg<25> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[26] clock n_693 soc_can_tx_inst_shift_reg<26> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[27] clock n_692 soc_can_tx_inst_shift_reg<27> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[28] clock n_691 soc_can_tx_inst_shift_reg<28> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[29] clock n_690 soc_can_tx_inst_shift_reg<29> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[30] clock n_689 soc_can_tx_inst_shift_reg<30> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[31] clock n_717 soc_can_tx_inst_shift_reg<31> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[32] clock n_747 soc_can_tx_inst_shift_reg<32> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[33] clock n_748 soc_can_tx_inst_shift_reg<33> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[34] clock n_749 soc_can_tx_inst_shift_reg<34> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[35] clock n_750 soc_can_tx_inst_shift_reg<35> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[36] clock n_751 soc_can_tx_inst_shift_reg<36> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[37] clock n_752 soc_can_tx_inst_shift_reg<37> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[38] clock n_753 soc_can_tx_inst_shift_reg<38> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[39] clock n_754 soc_can_tx_inst_shift_reg<39> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[40] clock n_755 soc_can_tx_inst_shift_reg<40> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[41] clock n_756 soc_can_tx_inst_shift_reg<41> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[42] clock n_757 soc_can_tx_inst_shift_reg<42> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[43] clock n_758 soc_can_tx_inst_shift_reg<43> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[44] clock n_759 soc_can_tx_inst_shift_reg<44> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[45] clock n_738 soc_can_tx_inst_shift_reg<45> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[46] clock n_737 soc_can_tx_inst_shift_reg<46> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[47] clock n_736 soc_can_tx_inst_shift_reg<47> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[48] clock n_735 soc_can_tx_inst_shift_reg<48> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[49] clock n_734 soc_can_tx_inst_shift_reg<49> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[50] clock n_733 soc_can_tx_inst_shift_reg<50> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[51] clock n_732 soc_can_tx_inst_shift_reg<51> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[52] clock n_731 soc_can_tx_inst_shift_reg<52> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[53] clock n_730 soc_can_tx_inst_shift_reg<53> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[54] clock n_729 soc_can_tx_inst_shift_reg<54> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[55] clock n_728 soc_can_tx_inst_shift_reg<55> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[56] clock n_727 soc_can_tx_inst_shift_reg<56> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[57] clock n_726 soc_can_tx_inst_shift_reg<57> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[58] clock n_725 soc_can_tx_inst_shift_reg<58> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[59] clock n_724 soc_can_tx_inst_shift_reg<59> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[60] clock n_723 soc_can_tx_inst_shift_reg<60> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[61] clock n_722 soc_can_tx_inst_shift_reg<61> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[62] clock n_721 soc_can_tx_inst_shift_reg<62> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[63] clock n_720 soc_can_tx_inst_shift_reg<63> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[64] clock n_719 soc_can_tx_inst_shift_reg<64> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[65] clock n_718 soc_can_tx_inst_shift_reg<65> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[66] clock n_761 soc_can_tx_inst_shift_reg<66> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[67] clock n_716 soc_can_tx_inst_shift_reg<67> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[68] clock n_715 soc_can_tx_inst_shift_reg<68> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[69] clock n_714 soc_can_tx_inst_shift_reg<69> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[70] clock n_713 soc_can_tx_inst_shift_reg<70> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[71] clock n_712 soc_can_tx_inst_shift_reg<71> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[72] clock n_711 soc_can_tx_inst_shift_reg<72> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[73] clock n_710 soc_can_tx_inst_shift_reg<73> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[74] clock n_709 soc_can_tx_inst_shift_reg<74> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[75] clock n_708 soc_can_tx_inst_shift_reg<75> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[76] clock n_707 soc_can_tx_inst_shift_reg<76> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[77] clock n_706 soc_can_tx_inst_shift_reg<77> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[78] clock n_705 soc_can_tx_inst_shift_reg<78> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[79] clock n_704 soc_can_tx_inst_shift_reg<79> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[80] clock n_703 soc_can_tx_inst_shift_reg<80> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[81] clock n_702 soc_can_tx_inst_shift_reg<81> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[82] clock n_701 soc_can_tx_inst_shift_reg<82> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[83] clock n_700 soc_can_tx_inst_shift_reg<83> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[84] clock n_656 soc_can_tx_inst_shift_reg<84> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[85] clock n_657 soc_can_tx_inst_shift_reg<85> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[86] clock n_658 soc_can_tx_inst_shift_reg<86> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[87] clock n_659 soc_can_tx_inst_shift_reg<87> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[88] clock n_660 soc_can_tx_inst_shift_reg<88> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[89] clock n_661 soc_can_tx_inst_shift_reg<89> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[90] clock n_662 soc_can_tx_inst_shift_reg<90> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[91] clock n_663 soc_can_tx_inst_shift_reg<91> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[92] clock n_664 soc_can_tx_inst_shift_reg<92> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[93] clock n_665 soc_can_tx_inst_shift_reg<93> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[94] clock n_666 soc_can_tx_inst_shift_reg<94> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[95] clock n_667 soc_can_tx_inst_shift_reg<95> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[96] clock n_668 soc_can_tx_inst_shift_reg<96> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[97] clock n_669 soc_can_tx_inst_shift_reg<97> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[98] clock n_670 soc_can_tx_inst_shift_reg<98> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[99] clock n_386 soc_can_tx_inst_shift_reg<99> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[100] clock n_671 soc_can_tx_inst_shift_reg<100> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[101] clock n_672 soc_can_tx_inst_shift_reg<101> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[102] clock n_385 soc_can_tx_inst_shift_reg<102> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[103] clock n_384 soc_can_tx_inst_shift_reg<103> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[104] clock n_383 soc_can_tx_inst_shift_reg<104> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[105] clock n_382 soc_can_tx_inst_shift_reg<105> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_shift_reg_reg[106] clock n_435 soc_can_tx_inst_shift_reg<106> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_state_reg[0] clock n_740 soc_can_tx_inst_state<0> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_state_reg[1] clock n_333 soc_can_tx_inst_state<1> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_status_reg_reg[0] clock n_358 soc_can_tx_inst_status_reg<0> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_status_reg_reg[1] clock n_854 soc_can_tx_inst_status_reg<1> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_status_reg_reg[2] clock n_673 soc_can_tx_inst_status_reg<2> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_status_reg_reg[3] clock n_850 soc_can_tx_inst_status_reg<3> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_status_reg_reg[4] clock n_774 soc_can_tx_inst_status_reg<4> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_status_reg_reg[5] clock n_848 soc_can_tx_inst_status_reg<5> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_can_tx_inst_status_reg_reg[6] clock n_775 soc_can_tx_inst_status_reg<6> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_bit_count_reg[0] clock n_368 soc_uart_rx_inst_bit_count<0> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_bit_count_reg[1] clock n_852 soc_uart_rx_inst_bit_count<1> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_bit_count_reg[2] clock n_844 soc_uart_rx_inst_bit_count<2> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_bit_count_reg[3] clock n_769 soc_uart_rx_inst_bit_count<3> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[1] clock n_375 soc_uart_rx_inst_shift_reg<1> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[2] clock n_374 soc_uart_rx_inst_shift_reg<2> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[3] clock n_373 soc_uart_rx_inst_shift_reg<3> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[4] clock n_372 soc_uart_rx_inst_shift_reg<4> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[5] clock n_376 soc_uart_rx_inst_shift_reg<5> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[6] clock n_371 soc_uart_rx_inst_shift_reg<6> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[7] clock n_370 soc_uart_rx_inst_shift_reg<7> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[8] clock n_377 soc_uart_rx_inst_shift_reg<8> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_shift_reg_reg[9] clock n_369 soc_uart_rx_inst_shift_reg<9> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_state_reg[0] clock n_430 soc_uart_rx_inst_state<0> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_state_reg[1] clock n_381 soc_uart_rx_inst_state<1> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_data_ready_reg clock n_388 soc_uart_data_ready VDD! 
+ n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[0] clock n_634 soc_uart_rx_data_bus<0> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[1] clock n_633 soc_uart_rx_data_bus<1> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[2] clock n_632 soc_uart_rx_data_bus<2> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[3] clock n_631 soc_uart_rx_data_bus<3> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[4] clock n_630 soc_uart_rx_data_bus<4> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[5] clock n_629 soc_uart_rx_data_bus<5> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[6] clock n_628 soc_uart_rx_data_bus<6> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_rx_inst_uart_rx_data_bus_reg[7] clock n_627 soc_uart_rx_data_bus<7> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[0] clock n_113 soc_uart_tx_data_Bus<0> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[1] clock n_117 soc_uart_tx_data_Bus<1> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[2] clock n_115 soc_uart_tx_data_Bus<2> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[3] clock n_116 soc_uart_tx_data_Bus<3> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[4] clock n_112 soc_uart_tx_data_Bus<4> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[5] clock n_118 soc_uart_tx_data_Bus<5> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[6] clock n_114 soc_uart_tx_data_Bus<6> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_data_Bus_reg[7] clock n_119 soc_uart_tx_data_Bus<7> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_Status_reg_reg[0] clock n_425 soc_uart_tx_inst_Status_reg<0> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_Status_reg_reg[1] clock n_686 soc_uart_tx_inst_Status_reg<1> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_Status_reg_reg[2] clock n_741 soc_uart_tx_inst_Status_reg<2> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_Status_reg_reg[3] clock n_768 soc_uart_tx_inst_Status_reg<3> 
+ VDD! n_19 VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[0] clock n_579 soc_uart_tx_inst_shift_reg<0> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[1] clock n_418 soc_uart_tx_inst_shift_reg<1> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[2] clock n_407 soc_uart_tx_inst_shift_reg<2> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[3] clock n_423 soc_uart_tx_inst_shift_reg<3> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[4] clock n_432 soc_uart_tx_inst_shift_reg<4> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[5] clock n_467 soc_uart_tx_inst_shift_reg<5> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[6] clock n_414 soc_uart_tx_inst_shift_reg<6> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[7] clock n_412 soc_uart_tx_inst_shift_reg<7> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[8] clock n_484 soc_uart_tx_inst_shift_reg<8> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_shift_reg_reg[9] clock n_300 soc_uart_tx_inst_shift_reg<9> 
+ n_19 VDD! VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_state_reg[0] clock n_636 soc_uart_tx_inst_state<0> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xsoc_uart_tx_inst_state_reg[1] clock n_353 soc_uart_tx_inst_state<1> VDD! n_19 
+ VDD! VSS / DFFQSRX1
Xcan_rx_pad can_rx_PAD VDD! VSS Can_rx / pad_in
Xclk_pad clk_PAD VDD! VSS clock / pad_in
Xrbyte_pad rbyte_PAD VDD! VSS R_byte / pad_in
Xrst_pad rst_PAD VDD! VSS reset / pad_in
Xser_rx_pad ser_rx_PAD VDD! VSS Serial_in / pad_in
Xtbyte_pad tbyte_PAD VDD! VSS T_byte / pad_in
Xcan_tx_pad can_tx_PAD VDD! VSS Bridge_Can_out / pad_out
Xser_tx_pad ser_tx_PAD VDD! VSS Bridge_Serial_out / pad_out
Xvss0 VDD! VSS / pad_gnd
Xvdd0 VDD! VSS / pad_vdd
Xcorner0 VDD! VSS / pad_corner
Xcorner1 VDD! VSS / pad_corner
Xcorner2 VDD! VSS / pad_corner
Xcorner3 VDD! VSS / pad_corner
XDIODE_2 tbyte_PAD VDD! VSS / ANTENNA
XDIODE_1 tbyte_PAD VDD! VSS / ANTENNA
.ENDS



//input ports
add mapped point clock clock -type PI PI
add mapped point reset reset -type PI PI
add mapped point Serial_in Serial_in -type PI PI
add mapped point Can_rx Can_rx -type PI PI
add mapped point R_byte R_byte -type PI PI
add mapped point T_byte T_byte -type PI PI

//output ports
add mapped point Bridge_Can_out Bridge_Can_out -type PO PO
add mapped point Bridge_Serial_out Bridge_Serial_out -type PO PO

//inout ports




//Sequential Pins
add mapped point Bridge_Can_out/q Bridge_Can_out_reg/Q -type DFF DFF
add mapped point Bridge_Serial_out/q Bridge_Serial_out_reg/Q -type DFF DFF
add mapped point Can_ID_Bus[0]/q Can_ID_Bus_reg[0]/Q -type DFF DFF
add mapped point Load_XMT_datareg/q Load_XMT_datareg_reg/Q -type DFF DFF
add mapped point Load_frame_datareg/q Load_frame_datareg_reg/Q -type DFF DFF
add mapped point can_index[0]/q can_index_reg[0]/Q -type DFF DFF
add mapped point can_index[1]/q can_index_reg[1]/Q -type DFF DFF
add mapped point can_index[2]/q can_index_reg[2]/Q -type DFF DFF
add mapped point can_rx_inst/Can_data_ready/q can_rx_inst_Can_data_ready_reg/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[0]/q can_rx_inst_Can_rx_data_Bus_reg[0]/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[1]/q can_rx_inst_Can_rx_data_Bus_reg[1]/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[2]/q can_rx_inst_Can_rx_data_Bus_reg[2]/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[3]/q can_rx_inst_Can_rx_data_Bus_reg[3]/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[4]/q can_rx_inst_Can_rx_data_Bus_reg[4]/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[5]/q can_rx_inst_Can_rx_data_Bus_reg[5]/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[6]/q can_rx_inst_Can_rx_data_Bus_reg[6]/Q -type DFF DFF
add mapped point can_rx_inst/Can_rx_data_Bus[7]/q can_rx_inst_Can_rx_data_Bus_reg[7]/Q -type DFF DFF
add mapped point can_rx_inst/bit_count[0]/q can_rx_inst_bit_count_reg[0]/Q -type DFF DFF
add mapped point can_rx_inst/bit_count[1]/q can_rx_inst_bit_count_reg[1]/Q -type DFF DFF
add mapped point can_rx_inst/bit_count[2]/q can_rx_inst_bit_count_reg[2]/Q -type DFF DFF
add mapped point can_rx_inst/bit_count[3]/q can_rx_inst_bit_count_reg[3]/Q -type DFF DFF
add mapped point can_rx_inst/bit_count[4]/q can_rx_inst_bit_count_reg[4]/Q -type DFF DFF
add mapped point can_rx_inst/bit_count[5]/q can_rx_inst_bit_count_reg[5]/Q -type DFF DFF
add mapped point can_rx_inst/bit_count[6]/q can_rx_inst_bit_count_reg[6]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[60]/q can_rx_inst_shift_reg_reg[60]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[61]/q can_rx_inst_shift_reg_reg[61]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[62]/q can_rx_inst_shift_reg_reg[62]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[63]/q can_rx_inst_shift_reg_reg[63]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[64]/q can_rx_inst_shift_reg_reg[64]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[65]/q can_rx_inst_shift_reg_reg[65]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[66]/q can_rx_inst_shift_reg_reg[66]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[67]/q can_rx_inst_shift_reg_reg[67]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[68]/q can_rx_inst_shift_reg_reg[68]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[69]/q can_rx_inst_shift_reg_reg[69]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[70]/q can_rx_inst_shift_reg_reg[70]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[71]/q can_rx_inst_shift_reg_reg[71]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[72]/q can_rx_inst_shift_reg_reg[72]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[73]/q can_rx_inst_shift_reg_reg[73]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[74]/q can_rx_inst_shift_reg_reg[74]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[75]/q can_rx_inst_shift_reg_reg[75]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[76]/q can_rx_inst_shift_reg_reg[76]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[77]/q can_rx_inst_shift_reg_reg[77]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[78]/q can_rx_inst_shift_reg_reg[78]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[79]/q can_rx_inst_shift_reg_reg[79]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[80]/q can_rx_inst_shift_reg_reg[80]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[81]/q can_rx_inst_shift_reg_reg[81]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[82]/q can_rx_inst_shift_reg_reg[82]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[83]/q can_rx_inst_shift_reg_reg[83]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[84]/q can_rx_inst_shift_reg_reg[84]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[85]/q can_rx_inst_shift_reg_reg[85]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[86]/q can_rx_inst_shift_reg_reg[86]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[87]/q can_rx_inst_shift_reg_reg[87]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[88]/q can_rx_inst_shift_reg_reg[88]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[89]/q can_rx_inst_shift_reg_reg[89]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[90]/q can_rx_inst_shift_reg_reg[90]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[91]/q can_rx_inst_shift_reg_reg[91]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[92]/q can_rx_inst_shift_reg_reg[92]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[93]/q can_rx_inst_shift_reg_reg[93]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[94]/q can_rx_inst_shift_reg_reg[94]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[95]/q can_rx_inst_shift_reg_reg[95]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[96]/q can_rx_inst_shift_reg_reg[96]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[97]/q can_rx_inst_shift_reg_reg[97]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[98]/q can_rx_inst_shift_reg_reg[98]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[99]/q can_rx_inst_shift_reg_reg[99]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[100]/q can_rx_inst_shift_reg_reg[100]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[101]/q can_rx_inst_shift_reg_reg[101]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[102]/q can_rx_inst_shift_reg_reg[102]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[103]/q can_rx_inst_shift_reg_reg[103]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[104]/q can_rx_inst_shift_reg_reg[104]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[105]/q can_rx_inst_shift_reg_reg[105]/Q -type DFF DFF
add mapped point can_rx_inst/shift_reg[106]/q can_rx_inst_shift_reg_reg[106]/Q -type DFF DFF
add mapped point can_rx_inst/state[0]/q can_rx_inst_state_reg[0]/Q -type DFF DFF
add mapped point can_rx_inst/state[1]/q can_rx_inst_state_reg[1]/Q -type DFF DFF
add mapped point can_rx_inst/state[2]/q can_rx_inst_state_reg[2]/Q -type DFF DFF
add mapped point can_tx_data_bus[0]/q can_tx_data_bus_reg[0]/Q -type DFF DFF
add mapped point can_tx_data_bus[1]/q can_tx_data_bus_reg[1]/Q -type DFF DFF
add mapped point can_tx_data_bus[2]/q can_tx_data_bus_reg[2]/Q -type DFF DFF
add mapped point can_tx_data_bus[3]/q can_tx_data_bus_reg[3]/Q -type DFF DFF
add mapped point can_tx_data_bus[4]/q can_tx_data_bus_reg[4]/Q -type DFF DFF
add mapped point can_tx_data_bus[5]/q can_tx_data_bus_reg[5]/Q -type DFF DFF
add mapped point can_tx_data_bus[6]/q can_tx_data_bus_reg[6]/Q -type DFF DFF
add mapped point can_tx_data_bus[7]/q can_tx_data_bus_reg[7]/Q -type DFF DFF
add mapped point can_tx_data_bus[8]/q can_tx_data_bus_reg[8]/Q -type DFF DFF
add mapped point can_tx_data_bus[9]/q can_tx_data_bus_reg[9]/Q -type DFF DFF
add mapped point can_tx_data_bus[10]/q can_tx_data_bus_reg[10]/Q -type DFF DFF
add mapped point can_tx_data_bus[11]/q can_tx_data_bus_reg[11]/Q -type DFF DFF
add mapped point can_tx_data_bus[12]/q can_tx_data_bus_reg[12]/Q -type DFF DFF
add mapped point can_tx_data_bus[13]/q can_tx_data_bus_reg[13]/Q -type DFF DFF
add mapped point can_tx_data_bus[14]/q can_tx_data_bus_reg[14]/Q -type DFF DFF
add mapped point can_tx_data_bus[15]/q can_tx_data_bus_reg[15]/Q -type DFF DFF
add mapped point can_tx_data_bus[16]/q can_tx_data_bus_reg[16]/Q -type DFF DFF
add mapped point can_tx_data_bus[17]/q can_tx_data_bus_reg[17]/Q -type DFF DFF
add mapped point can_tx_data_bus[18]/q can_tx_data_bus_reg[18]/Q -type DFF DFF
add mapped point can_tx_data_bus[19]/q can_tx_data_bus_reg[19]/Q -type DFF DFF
add mapped point can_tx_data_bus[20]/q can_tx_data_bus_reg[20]/Q -type DFF DFF
add mapped point can_tx_data_bus[21]/q can_tx_data_bus_reg[21]/Q -type DFF DFF
add mapped point can_tx_data_bus[22]/q can_tx_data_bus_reg[22]/Q -type DFF DFF
add mapped point can_tx_data_bus[23]/q can_tx_data_bus_reg[23]/Q -type DFF DFF
add mapped point can_tx_data_bus[24]/q can_tx_data_bus_reg[24]/Q -type DFF DFF
add mapped point can_tx_data_bus[25]/q can_tx_data_bus_reg[25]/Q -type DFF DFF
add mapped point can_tx_data_bus[26]/q can_tx_data_bus_reg[26]/Q -type DFF DFF
add mapped point can_tx_data_bus[27]/q can_tx_data_bus_reg[27]/Q -type DFF DFF
add mapped point can_tx_data_bus[28]/q can_tx_data_bus_reg[28]/Q -type DFF DFF
add mapped point can_tx_data_bus[29]/q can_tx_data_bus_reg[29]/Q -type DFF DFF
add mapped point can_tx_data_bus[30]/q can_tx_data_bus_reg[30]/Q -type DFF DFF
add mapped point can_tx_data_bus[31]/q can_tx_data_bus_reg[31]/Q -type DFF DFF
add mapped point can_tx_data_bus[32]/q can_tx_data_bus_reg[32]/Q -type DFF DFF
add mapped point can_tx_data_bus[33]/q can_tx_data_bus_reg[33]/Q -type DFF DFF
add mapped point can_tx_data_bus[34]/q can_tx_data_bus_reg[34]/Q -type DFF DFF
add mapped point can_tx_data_bus[35]/q can_tx_data_bus_reg[35]/Q -type DFF DFF
add mapped point can_tx_data_bus[36]/q can_tx_data_bus_reg[36]/Q -type DFF DFF
add mapped point can_tx_data_bus[37]/q can_tx_data_bus_reg[37]/Q -type DFF DFF
add mapped point can_tx_data_bus[38]/q can_tx_data_bus_reg[38]/Q -type DFF DFF
add mapped point can_tx_data_bus[39]/q can_tx_data_bus_reg[39]/Q -type DFF DFF
add mapped point can_tx_data_bus[40]/q can_tx_data_bus_reg[40]/Q -type DFF DFF
add mapped point can_tx_data_bus[41]/q can_tx_data_bus_reg[41]/Q -type DFF DFF
add mapped point can_tx_data_bus[42]/q can_tx_data_bus_reg[42]/Q -type DFF DFF
add mapped point can_tx_data_bus[43]/q can_tx_data_bus_reg[43]/Q -type DFF DFF
add mapped point can_tx_data_bus[44]/q can_tx_data_bus_reg[44]/Q -type DFF DFF
add mapped point can_tx_data_bus[45]/q can_tx_data_bus_reg[45]/Q -type DFF DFF
add mapped point can_tx_data_bus[46]/q can_tx_data_bus_reg[46]/Q -type DFF DFF
add mapped point can_tx_data_bus[47]/q can_tx_data_bus_reg[47]/Q -type DFF DFF
add mapped point can_tx_data_bus[48]/q can_tx_data_bus_reg[48]/Q -type DFF DFF
add mapped point can_tx_data_bus[49]/q can_tx_data_bus_reg[49]/Q -type DFF DFF
add mapped point can_tx_data_bus[50]/q can_tx_data_bus_reg[50]/Q -type DFF DFF
add mapped point can_tx_data_bus[51]/q can_tx_data_bus_reg[51]/Q -type DFF DFF
add mapped point can_tx_data_bus[52]/q can_tx_data_bus_reg[52]/Q -type DFF DFF
add mapped point can_tx_data_bus[53]/q can_tx_data_bus_reg[53]/Q -type DFF DFF
add mapped point can_tx_data_bus[54]/q can_tx_data_bus_reg[54]/Q -type DFF DFF
add mapped point can_tx_data_bus[55]/q can_tx_data_bus_reg[55]/Q -type DFF DFF
add mapped point can_tx_data_bus[56]/q can_tx_data_bus_reg[56]/Q -type DFF DFF
add mapped point can_tx_data_bus[57]/q can_tx_data_bus_reg[57]/Q -type DFF DFF
add mapped point can_tx_data_bus[58]/q can_tx_data_bus_reg[58]/Q -type DFF DFF
add mapped point can_tx_data_bus[59]/q can_tx_data_bus_reg[59]/Q -type DFF DFF
add mapped point can_tx_data_bus[60]/q can_tx_data_bus_reg[60]/Q -type DFF DFF
add mapped point can_tx_data_bus[61]/q can_tx_data_bus_reg[61]/Q -type DFF DFF
add mapped point can_tx_data_bus[62]/q can_tx_data_bus_reg[62]/Q -type DFF DFF
add mapped point can_tx_data_bus[63]/q can_tx_data_bus_reg[63]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[0]/q uart_tx_data_Bus_reg[0]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[1]/q uart_tx_data_Bus_reg[1]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[2]/q uart_tx_data_Bus_reg[2]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[3]/q uart_tx_data_Bus_reg[3]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[4]/q uart_tx_data_Bus_reg[4]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[5]/q uart_tx_data_Bus_reg[5]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[6]/q uart_tx_data_Bus_reg[6]/Q -type DFF DFF
add mapped point uart_tx_data_Bus[7]/q uart_tx_data_Bus_reg[7]/Q -type DFF DFF



//Black Boxes
add mapped point can_tx_inst can_tx_inst -type BBOX BBOX
add mapped point uart_rx_inst uart_rx_inst -type BBOX BBOX
add mapped point uart_tx_inst uart_tx_inst -type BBOX BBOX



//Empty Modules as Blackboxes

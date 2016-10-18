set_property SRC_FILE_INFO {cfile:D:/code_test/HDL/vivado/comparator/comparator.srcs/constrs_1/imports/Downloads/ZYBO_master.xdc rfile:../../../comparator.srcs/constrs_1/imports/Downloads/ZYBO_master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { i_val1[1] }]; #IO_L19N_T3_VREF_35 Sch=SW0
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { i_val1[0] }];  #IO_L24P_T3_34 Sch=SW1
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { i_val2[1] }]; #IO_L4N_T0_34 Sch=SW2
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { i_val2[0] }]; #IO_L9P_T1_DQS_34 Sch=SW3
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { o_VAL1_eq_VAL2 }]; #IO_L23P_T3_35 Sch=LED0
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { o_VAL1_morethen_VAL2 }]; #IO_L23N_T3_35 Sch=LED1
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { o_VAL1_lessthen_VAL2 }]; #IO_L3N_T0_DQS_AD1N_35 Sch=LED3

set_global_assignment -entity "alt_clk_div" -library "lib_alt_clk_div" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "alt_clk_div" -library "lib_alt_clk_div" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "alt_clk_div" -library "lib_alt_clk_div" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_alt_clk_div" -name SPD_FILE [file join $::quartus(sip_path) "../alt_clk_div.spd"]
set_global_assignment -library "lib_alt_clk_div" -name MISC_FILE [file join $::quartus(sip_path) "../../alt_clk_div.qsys"]

set_global_assignment -library "lib_alt_clk_div" -name MISC_FILE [file join $::quartus(sip_path) "alt_clk_div.vhd"]
set_global_assignment -library "lib_alt_clk_div" -name MISC_FILE [file join $::quartus(sip_path) "submodules/alt_clk_div_altclkctrl_0.vhd"]

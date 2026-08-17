set_property PACKAGE_PIN P16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
create_clock -period 11.111 -name sys_clk [get_ports clk]
set_property PACKAGE_PIN U4 [get_ports rst]
set_property IOSTANDARD SSTL15 [get_ports rst]
set_property PACKAGE_PIN U6 [get_ports cncl]
set_property IOSTANDARD SSTL15 [get_ports cncl]
set_property PACKAGE_PIN R8 [get_ports {coin[0]}]
set_property IOSTANDARD SSTL15 [get_ports {coin[0]}]
set_property PACKAGE_PIN P8 [get_ports {coin[1]}]
set_property IOSTANDARD SSTL15 [get_ports {coin[1]}]
set_property PACKAGE_PIN R7 [get_ports {sel[0]}]
set_property IOSTANDARD SSTL15 [get_ports {sel[0]}]
set_property PACKAGE_PIN R6 [get_ports {sel[1]}]
set_property IOSTANDARD SSTL15 [get_ports {sel[1]}]
set_property PACKAGE_PIN M26 [get_ports A]
set_property IOSTANDARD LVCMOS33 [get_ports A]
set_property PACKAGE_PIN T24 [get_ports B]
set_property IOSTANDARD LVCMOS33 [get_ports B]
set_property PACKAGE_PIN T25 [get_ports C]
set_property IOSTANDARD LVCMOS33 [get_ports C]
set_property PACKAGE_PIN R26 [get_ports change]
set_property IOSTANDARD LVCMOS33 [get_ports change]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]








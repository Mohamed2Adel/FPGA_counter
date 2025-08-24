# Timing_cons
create_clock -name clk -period 10 [get_ports clk]
create_generated_clock -name internal_clk \
    -source clk \
    -divide_by [expr 100/7] \
    U_pll/clk_out1
## Active-low reset (OTG-RESETN pushbutton)
set_property PACKAGE_PIN G17 [get_ports reset];      
set_property IOSTANDARD LVCMOS33 [get_ports reset];
set_property PULLUP TRUE [get_ports reset];
## LEDs (LD0-LD3)
set_property PACKAGE_PIN T22 [get_ports {count[0]}]   ; 
set_property PACKAGE_PIN T21 [get_ports {count[1]}]  ;  
set_property PACKAGE_PIN U22 [get_ports {count[2]}] ;   
##set_property PACKAGE_PIN U21 [get_ports {out[3]}];
set_property IOSTANDARD LVCMOS33 [get_ports {count[*]}];
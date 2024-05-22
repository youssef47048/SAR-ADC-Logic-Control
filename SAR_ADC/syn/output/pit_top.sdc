###################################################################

# Created by write_sdc on Mon May  6 07:08:53 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_wire_load_mode enclosed
set_wire_load_model -name 8000 -library saed90nm_max_lth
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports rst]
set_driving_cell -max -lib_cell TNBUFFX1 -no_design_rule [get_ports comp_out]
set_load -pin_load 10.8251 [get_ports {digital_out[9]}]
set_load -pin_load 10.8251 [get_ports {digital_out[8]}]
set_load -pin_load 10.8251 [get_ports {digital_out[7]}]
set_load -pin_load 10.8251 [get_ports {digital_out[6]}]
set_load -pin_load 10.8251 [get_ports {digital_out[5]}]
set_load -pin_load 10.8251 [get_ports {digital_out[4]}]
set_load -pin_load 10.8251 [get_ports {digital_out[3]}]
set_load -pin_load 10.8251 [get_ports {digital_out[2]}]
set_load -pin_load 10.8251 [get_ports {digital_out[1]}]
set_load -pin_load 10.8251 [get_ports {digital_out[0]}]
set_load -pin_load 10.8251 [get_ports EOC]
create_clock [get_ports clk]  -period 1  -waveform {0 0.5}
set_clock_latency 0.12  [get_clocks clk]
set_clock_uncertainty 0.05  [get_clocks clk]
group_path -name COMB  -from [list [get_ports clk] [get_ports rst] [get_ports comp_out]]  -to [list [get_ports {digital_out[9]}] [get_ports {digital_out[8]}]           \
[get_ports {digital_out[7]}] [get_ports {digital_out[6]}] [get_ports           \
{digital_out[5]}] [get_ports {digital_out[4]}] [get_ports {digital_out[3]}]    \
[get_ports {digital_out[2]}] [get_ports {digital_out[1]}] [get_ports           \
{digital_out[0]}] [get_ports EOC]]
group_path -name INPUTS  -from [list [get_ports rst] [get_ports comp_out]]
group_path -name OUTPUTS  -to [list [get_ports {digital_out[9]}] [get_ports {digital_out[8]}]           \
[get_ports {digital_out[7]}] [get_ports {digital_out[6]}] [get_ports           \
{digital_out[5]}] [get_ports {digital_out[4]}] [get_ports {digital_out[3]}]    \
[get_ports {digital_out[2]}] [get_ports {digital_out[1]}] [get_ports           \
{digital_out[0]}] [get_ports EOC]]
set_false_path -hold   -from [list [get_ports rst] [get_ports comp_out]]
set_false_path -hold   -to [list [get_ports {digital_out[9]}] [get_ports {digital_out[8]}]           \
[get_ports {digital_out[7]}] [get_ports {digital_out[6]}] [get_ports           \
{digital_out[5]}] [get_ports {digital_out[4]}] [get_ports {digital_out[3]}]    \
[get_ports {digital_out[2]}] [get_ports {digital_out[1]}] [get_ports           \
{digital_out[0]}] [get_ports EOC]]
set_input_delay -clock clk  -max 0.3  [get_ports rst]
set_input_delay -clock clk  -max 0.3  [get_ports comp_out]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[9]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[8]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[7]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[6]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[5]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[4]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[3]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[2]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[1]}]
set_output_delay -clock clk  -max 0.3  [get_ports {digital_out[0]}]
set_output_delay -clock clk  -max 0.3  [get_ports EOC]

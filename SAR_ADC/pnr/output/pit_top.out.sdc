################################################################################
#
# Design name:  routing
#
# Created by icc2 write_sdc on Tue May  7 06:34:17 2024
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 24; \
#   /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 25
create_clock -name clk -period 1 -waveform {0 0.5} [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 31
group_path -name COMB -from [get_ports {clk rst comp_out}] -to [get_ports \
    {digital_out[9] digital_out[8] digital_out[7] digital_out[6] digital_out[5] \
    digital_out[4] digital_out[3] digital_out[2] digital_out[1] digital_out[0] EOC}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 32
group_path -name INPUTS -from [get_ports {rst comp_out}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 37
group_path -name OUTPUTS -to [get_ports {digital_out[9] digital_out[8] \
    digital_out[7] digital_out[6] digital_out[5] digital_out[4] digital_out[3] \
    digital_out[2] digital_out[1] digital_out[0] EOC}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 38
set_false_path -hold -from [get_ports {rst comp_out}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 43
set_false_path -hold -to [get_ports {digital_out[9] digital_out[8] \
    digital_out[7] digital_out[6] digital_out[5] digital_out[4] digital_out[3] \
    digital_out[2] digital_out[1] digital_out[0] EOC}]
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
set_load -pin_load 10.8251 [get_ports {EOC}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.0929856 [get_clocks {clk}]
# -origin useful_skew
set_clock_latency -max 0.0903908 [get_clocks {clk}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk}]
set_clock_uncertainty 0.05 [get_clocks {clk}]
# /home/vlsi/Synopsys/project/project_sar/pnr/scripts/CTS.tcl, line 48
set_driving_cell -lib_cell NBUFFX4 [get_ports {clk}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 11
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports {rst}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 12
set_driving_cell -lib_cell TNBUFFX1 -no_design_rule -max [get_ports {comp_out}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 44
set_input_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {rst}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 45
set_input_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {comp_out}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 46
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[9]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 47
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[8]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 48
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[7]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 49
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[6]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 50
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[5]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 51
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[4]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 52
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[3]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 53
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[2]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 54
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[1]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 55
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {digital_out[0]}]
# /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc, line 56
set_output_delay -clock [get_clocks {clk}] -max 0.3 [get_ports {EOC}]

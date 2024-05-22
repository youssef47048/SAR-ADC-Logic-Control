# Prime Time Setup
# Change the directories acc. to your project loaction


set Design_name pit_top

set search_path /eda/synopsys/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm

set target_library $search_path/Digital_Standard_cell_Library/synopsys/models/saed90nm_max_lth.db

set link_path "* $target_library"

#set Netlist_files  /home/vlsi/Synopsys/project/project/syn/output/pit_top.v
set Netlist_files  /home/vlsi/Synopsys/project/project_sar/pnr/output/pit_top.v


#set SPEF_files     /home/vlsi/Synopsys/project/project/syn/output/pit_top.out.spef.spef_scenario
set SPEF_files    /home/vlsi/Synopsys/project/project_sar/pnr/output/pit_top.out.spef.spef_scenario



#set constrains_file /home/vlsi/Synopsys/project/project/syn/output/pit_top.out.sdc

set constrains_file  /home/vlsi/Synopsys/project/project_sar/pnr/output/pit_top.out.sdc


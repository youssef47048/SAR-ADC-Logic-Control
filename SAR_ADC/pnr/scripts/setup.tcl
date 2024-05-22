# put the search path directory of the technology   
#set_app_var search_path /eda/synopsys/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/process/astro/tech
set_app_var search_path /eda/synopsys/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm
set TECH_FILE $search_path/Digital_Standard_cell_Library/process/astro/tech/astroTechFile.tf 

# put the directory of your ndm created from the library manager
set reference_library /home/vlsi/Synopsys/project/project_sar/ndm/saed90nm_max_lth.ndm

#create design library from technology file & ndm

create_lib -technology $TECH_FILE -ref_libs $reference_library sar.dlib

#read gate level netlist output from synthesis
read_verilog -top pit_top /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.v

link_block

set Tech $search_path/Technology_Kit/starrcxt
read_parasitic_tech -layermap $Tech/tech2itf.map -tlup $Tech/tluplus/saed90nm_1p9m_1t_Cmax.tluplus  -name maxTLU

read_parasitic_tech -layermap $Tech/tech2itf.map -tlup $Tech/tluplus/saed90nm_1p9m_1t_Cmin.tluplus  -name minTLU

#put the sdc file output from synthesis
read_sdc /home/vlsi/Synopsys/project/project_sar/syn/output/pit_top.sdc

get_site_defs

set_attribute [get_site_defs unit] symmetry y

set_attribute [get_layers {M1 M3 M5 M7 M9} ] routing_direction horizontal

set_attribute [get_layers {M2 M4 M6 M8 } ] routing_direction vertical

get_attribute [get_layers M7] routing_direction

report_ignored_layers

set_ignored_layers -max_routing_layer M8

report_ignored_layers
save_block

#start_gui 







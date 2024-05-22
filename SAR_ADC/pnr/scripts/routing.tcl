# 1.routing

#source -verbose ./scripts/CTS.tcl 

copy_block -from_block sar.dlib:CTS.design -to_block routing
current_block routing.design

#  check for any issues that might cause problems during routing
report_qor -summary
check_design -checks pre_route_stage


#antenna rules (change the directory according to your project)
source   /eda/synopsys/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/process/astro/tech/saed90nm_1p9m_antenna.tcl



## Routing  (Performs all routing stages in one step the command runs global routing, track assignment, and detail routing )

route_auto


# Routing Optimization
route_opt

#Final Check
check_routes

#Routing is Finished 

# 2.Filler Cells Insertion

set FillerCells " SHFILL128 SHFILL64 SHFILL3 SHFILL2 SHFILL1 "
create_stdcell_fillers -lib_cells $FillerCells
connect_pg_net -automatic

remove_stdcell_fillers_with_violation

check_legality

# 3.Checks & Output
# First Create new directory called output in pnr folder

set DESIGN_NAME pit_top

# Netlist after physical synthesis
##write_verilog  ./output/${DESIGN_NAME}.v
write_verilog  /home/vlsi/Synopsys/project/project_sar/pnr/output/${DESIGN_NAME}.v

#SDC_OUT
#write_sdc -output ./output/${DESIGN_NAME}.out.sdc
write_sdc -output /home/vlsi/Synopsys/project/project_sar/pnr/output/${DESIGN_NAME}.out.sdc

# SPEF_OUT
#write_parasitics -format SPEF -output ./output/${DESIGN_NAME}.out.spef
write_parasitics -format SPEF -output /home/vlsi/Synopsys/project/project_sar/pnr/output/${DESIGN_NAME}.out.spef
######DEF_OUT
#write_def ./output/${DESIGN_NAME}.out.def
write_def /home/vlsi/Synopsys/project/project_sar/pnr/output/${DESIGN_NAME}.out.def

##########GDS_OUT

set GDS_MAP_FILE  /eda/synopsys/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm/Technology_Kit/milkyway/saed90nm.gdsout.map

set STD_CELL_GDS  /eda/synopsys/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/layout/gds/saed90nm.gds

write_gds \
-view design \
-lib_cell_view frame \
-output_pin all \
-fill include \
-exclude_empty_block \
-long_names \
-layer_map "$GDS_MAP_FILE" \
-keep_data_type \
-merge_files "$STD_CELL_GDS" \
/home/vlsi/Synopsys/project/project_sar/pnr/output/${DESIGN_NAME}.gds


save_block






#source -verbose ./scripts/setup.tcl 

#open_block /home/vlsi/Synopsys/project/project/pnr/script/sar.dlib:pit_top.design

initialize_floorplan -side_ratio {1 1} -core_offset {15}

create_placement -floorplan


#to put macros ....shape_blocks


set_block_pin_constraint -self -allowed_layers {M3 M4 M5 M6}


place_pins -self

##open_block /home/vlsi/Synopsys/project/project/pnr/script/sar.dlib:pit_top_floorplan.design

#copy block to a new block to work on it

#source -verbose ./scripts/floor.tcl 

copy_block -from_block sar.dlib:pit_top.design -to_block power_plan
current_block power_plan.design

# remove ignored layer M8
report_ignored_layers
remove_ignored_layers -all -max_routing_layer -min_routing_layer
report_ignored_layers

set_app_option -name plan.pgroute.auto_connect_pg_net -value true
#set_app_option -name plan.pgroute.connect_user_route_shapes -value true
#set_app_option -name plan.pgroute.disable_floating_removal -value true
#set_app_option -name plan.pgroute.disable_trimming -value true

create_net -power VDD
create_net -ground VSS

# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical "*/VDD"]
connect_pg_net -net VSS [get_pins -hierarchical "*/VSS"]

# P G   R I N G   C R E A T I O N

create_pg_ring_pattern ring_pattern -horizontal_layer M9    -horizontal_width {5} -horizontal_spacing {2}     -vertical_layer M8 -vertical_width {5}     -vertical_spacing {2} 

set_pg_strategy core_ring -core -pattern \
    {{pattern: ring_pattern}{nets: {VDD VSS}}{offset: {0.8 0.8}}} \
    -extension {{stop: innermost_ring}}

compile_pg -strategies core_ring


# PG MESH CREATION

create_pg_mesh_pattern pg_mesh1    -parameters {w1 p1 w2 p2 f t}    -layers {{{vertical_layer: M8} {width: @w1} {spacing: interleaving}         {pitch: @p1} {offset: @f} {trim: @t}}            {{horizontal_layer: M9 } {width: @w2} {spacing: interleaving}         {pitch: @p2} {offset: @f} {trim: @t}}}


set_pg_strategy s_mesh1 \
   -pattern {{pattern: pg_mesh1} {nets: {VDD VSS VSS VDD}} \
{offset_start: 5 5} {parameters: 3 40 3 40 5 false}} \
   -core -extension {{stop: outermost_ring}}


compile_pg -strategies s_mesh1


# S T A N D A R D    C E L L    R A I L    I N S E R T I O N
create_pg_std_cell_conn_pattern     std_cell_rail      -layers {M1}     -rail_width 0.06

set_pg_strategy rail_strat -core \
    -pattern {{name: std_cell_rail} {nets: VDD VSS} }
    
compile_pg -strategies rail_strat    

save_block





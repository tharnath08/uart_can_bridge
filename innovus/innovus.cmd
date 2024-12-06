#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Nov  9 19:19:28 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_design_uniquify 1
set init_lef_file { /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/tech.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/sclib_tsmc180.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/padlib_tsmc180.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/sclib_tsmc180_antenna.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RA1SHD_RD/RA1SHD_RD.vclef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RA1SHD_RD/RA1SHD_RD_ant.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RF2SH/RF2SH.vclef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RF2SH/RF2SH_ant.lef }
set init_mmmc_file { CONF/picosoc.view }
set init_verilog { HDL/GATE/soc_top_m.v }
set init_io_file { SCRIPTS/place_io_pad.io }
set init_pwr_net { VDD }
set init_gnd_net { VSS }
init_design
saveDesign DBS/soc_top-import.enc
setDrawView fplan
fit
floorPlan -site core7T -s 1070 910 80 80 80 80
setDrawView fplan
fit
placeInstance soc/soc_memory_sram_2 318 315 R180
addHaloToBlock 8 8 8 8 -fromInstBox -snapToSite soc/soc_memory_sram_2
placeInstance soc/soc_memory_sram_1 318 1057 R0
addHaloToBlock 8 8 8 8 -fromInstBox -snapToSite soc/soc_memory_sram_1
placeInstance soc/soc_cpu_cpuregs_reg_1 315 575 R0
addHaloToBlock 2 2 2 2 -fromInstBox -snapToSite soc/soc_cpu_cpuregs_reg_1
placeInstance soc/soc_cpu_cpuregs_reg_2 315 805 R0
addHaloToBlock 2 2 2 2 -fromInstBox -snapToSite soc/soc_cpu_cpuregs_reg_2
saveDesign DBS/soc_top-fplan.enc
globalNetConnect VDD -type pgpin -pin VDD -all -verbose
globalNetConnect VSS -type pgpin -pin VSS -all -verbose
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
deleteIoFiller
addIoFiller -cell pad_fill_32 -prefix FILLER -side n
addIoFiller -cell pad_fill_16 -prefix FILLER -side n
addIoFiller -cell pad_fill_8 -prefix FILLER -side n
addIoFiller -cell pad_fill_4 -prefix FILLER -side n
addIoFiller -cell pad_fill_2 -prefix FILLER -side n
addIoFiller -cell pad_fill_1 -prefix FILLER -side n
addIoFiller -cell pad_fill_01 -prefix FILLER -side n
addIoFiller -cell pad_fill_005 -prefix FILLER -side n -fillAnyGap
addIoFiller -cell pad_fill_32 -prefix FILLER -side s
addIoFiller -cell pad_fill_16 -prefix FILLER -side s
addIoFiller -cell pad_fill_8 -prefix FILLER -side s
addIoFiller -cell pad_fill_4 -prefix FILLER -side s
addIoFiller -cell pad_fill_2 -prefix FILLER -side s
addIoFiller -cell pad_fill_1 -prefix FILLER -side s
addIoFiller -cell pad_fill_01 -prefix FILLER -side s
addIoFiller -cell pad_fill_005 -prefix FILLER -side s -fillAnyGap
addIoFiller -cell pad_fill_32 -prefix FILLER -side e
addIoFiller -cell pad_fill_16 -prefix FILLER -side e
addIoFiller -cell pad_fill_8 -prefix FILLER -side e
addIoFiller -cell pad_fill_4 -prefix FILLER -side e
addIoFiller -cell pad_fill_2 -prefix FILLER -side e
addIoFiller -cell pad_fill_1 -prefix FILLER -side e
addIoFiller -cell pad_fill_01 -prefix FILLER -side e
addIoFiller -cell pad_fill_005 -prefix FILLER -side e -fillAnyGap
addIoFiller -cell pad_fill_32 -prefix FILLER -side w
addIoFiller -cell pad_fill_16 -prefix FILLER -side w
addIoFiller -cell pad_fill_8 -prefix FILLER -side w
addIoFiller -cell pad_fill_4 -prefix FILLER -side w
addIoFiller -cell pad_fill_2 -prefix FILLER -side w
addIoFiller -cell pad_fill_1 -prefix FILLER -side w
addIoFiller -cell pad_fill_01 -prefix FILLER -side w
addIoFiller -cell pad_fill_005 -prefix FILLER -side w -fillAnyGap
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isSelectable 1
addRing -type core_rings -follow core -nets {VDD VDD VSS VSS} -center 1 -width {top 10 bottom 10 left 10 right 10} -spacing {top 4 bottom 4 left 4 right 4} -center 1 -layer {top METAL5 bottom METAL5 left METAL6 right METAL6} -use_wire_group 1 -extend_corner {} -jog_distance 0 -snap_wire_center_to_grid None -threshold 0
addStripe -nets {VDD VSS} -layer METAL6 -direction vertical -width 5 -spacing 5 -number_of_sets 10 -start_from left -start_offset 25 -stop_offset 30 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METAL6 -padcore_ring_bottom_layer_limit METAL1 -block_ring_top_layer_limit METAL6 -block_ring_bottom_layer_limit METAL1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addStripe -nets {VDD VSS} -layer METAL5 -direction horizontal -width 5 -spacing 5 -number_of_sets 9 -start_from left -start_offset 30 -stop_offset 30 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METAL6 -padcore_ring_bottom_layer_limit METAL1 -block_ring_top_layer_limit METAL6 -block_ring_bottom_layer_limit METAL1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
saveDesign DBS/soc_top-power.enc
sroute -connect { blockPin corePin padPin floatingStripe} -layerChangeRange { METAL1(1) METAL6(6) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPintarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -crossoverViaLayerRange { METAL1(1) METAL6(6) } -nets { VDD VSS } -allowJogging 1 -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { METAL1(1) METAL6(6)}
fit
saveDesign DBS/soc_top-power-routed.enc
zoomBox 212.72750 272.23650 1576.85050 1493.41800
zoomBox 522.56250 622.93000 1360.30500 1372.88850
zoomBox 758.26400 889.71450 1195.57150 1281.19800
zoomBox 956.04950 1113.58200 1057.33800 1204.25700
zoomBox 984.54750 1145.83850 1037.42050 1193.17100
zoomBox 1010.46050 1175.16900 1019.30950 1183.09050
zoomBox 1014.46150 1179.69800 1016.51200 1181.53350
zoomBox 1015.03800 1180.35000 1016.10900 1181.30900
zoomBox 1015.46550 1180.83400 1015.80950 1181.14200
zoomBox 1015.63350 1181.02400 1015.69150 1181.07600
zoomBox 1015.66350 1181.06000 1015.66750 1181.06350
zoomBox 918.96700 1071.61250 1083.24450 1218.67600
zoomBox -625293.94850 366022.99600 438744.13400 -828919.44500
zoomBox 1015.48350 1180.86350 1015.77500 1181.12450
zoomBox 1015.32300 1180.73550 1015.88150 1181.23550
zoomBox 1015.19400 1180.63200 1015.96750 1181.32450
zoomBox 1015.01600 1180.48900 1016.08650 1181.44750
zoomBox 1014.61250 1180.16600 1016.35600 1181.72700
zoomBox 1013.65600 1179.40000 1016.99650 1182.39050
zoomBox 1011.82350 1177.93150 1018.22350 1183.66100
zoomBox 1008.31250 1175.11800 1020.57400 1186.09450
zoomBox 1001.58700 1169.72800 1025.07700 1190.75650
zoomBox 983.94700 1155.59250 1036.88800 1202.98600
zoomBox 954.91000 1132.32500 1056.32950 1223.11700
zoomBox 931.57800 1113.62900 1071.95100 1239.29300
zoomBox 854.58800 1051.93750 1123.49950 1292.67050
zoomBox 707.09850 933.75500 1222.24950 1394.92500
zoomBox 424.55600 707.35500 1411.42450 1590.81300
zoomBox 53.14800 409.74750 1660.09900 1848.31150
zoomBox 385.24900 534.88650 1372.11800 1418.34500
zoomBox 637.88850 630.08400 1153.04100 1091.25550
zoomBox 769.76750 679.77750 1038.68100 920.51250
zoomBox 838.61000 705.71800 978.98450 831.38300
zoomBox 867.62000 716.64850 953.82800 793.82300
zoomBox 901.20950 729.30450 924.70100 750.33450
zoomBox 902.88200 730.27550 922.85000 748.15100
zoomBox 906.33350 732.58900 918.59650 743.56700
zoomBox 908.27950 734.19850 915.81100 740.94100
zoomBox 843.41950 680.55550 1008.61000 828.43650
zoomBox 831.42650 670.63700 1025.76900 844.61500
zoomBox -439250.95800 -363296.86900 630703.38700 594540.65600
zoomBox -194390.99250 -160786.89750 280353.43550 264210.70150
zoomBox 968.38100 739.06150 978.80800 748.39600
zoomBox 969.12350 739.59950 977.98650 747.53400
zoomBox 965.31100 736.77450 982.29150 751.97550
zoomBox 955.31300 729.36500 993.58400 763.62550
zoomBox 938.85650 717.16950 1012.17150 782.80200
zoomBox 907.33000 693.80650 1047.77950 819.53900
zoomBox 798.40650 613.08950 1170.80500 946.46550
zoomBox 638.27250 494.42300 1351.67150 1133.06750
zoomBox 331.50700 267.09550 1698.15600 1490.53800
zoomBox -256.16000 -168.39350 2361.91100 2175.33900
zoomBox -274.09100 -275.97750 2805.99300 2481.35500
zoomBox 487.75150 407.35850 2713.11250 2399.53150
zoomBox -274.09150 -275.97850 2805.99350 2481.35500
zoomBox -1999.10500 -1823.23300 3016.30000 2666.62500
zoomBox -1187.08700 -1104.84000 2436.54400 2139.08300
zoomBox -864.33550 -798.96500 2215.75100 1958.37000
zoomBox -1197.63500 -852.40550 2425.99650 2391.51800
zoomBox -891.75950 -596.45500 2188.32750 2160.88050
zoomBox -631.76550 -378.89650 1986.30900 1964.83900
zoomBox -891.76050 -596.45500 2188.32750 2160.88100
zoomBox -631.76600 -378.89700 1986.30900 1964.83900
zoomBox -410.77050 -193.97200 1814.59300 1798.20350
zoomBox -222.92500 -36.78600 1668.63450 1656.56350
zoomBox -63.25650 96.82200 1544.56950 1536.16950
zoomBox -222.92550 -36.78650 1668.63450 1656.56350
zoomBox -33.76950 -36.78650 1857.79050 1656.56350
zoomBox 127.00100 94.98650 1734.82700 1534.33400
setMultiCpuUsage -localCpu 2 -keepLicense true -acquireLicense 2
setDesignMode -process 180
setDesignMode -topRoutingLayer 4
setPlaceMode -timingDriven true -congEffort high -placeIOPins 1 -place_global_max_density 0.45
place_design
setDrawView place
checkPlace ./RPT/place.rpt
saveDesign DBS/soc_top-placed.enc
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 1 -prefix soc_top_preCTS -outDir RPT
setMultiCpuUsage -localCpu 2 -keepLicense true -acquireLicense 2
set_ccopt_property route_type_override_preferred_routing_layer_effort none
setDesignMode -topRoutingLayer 4
setDesignMode -bottomRoutingLayer 2
create_route_type -name clkroute -top_preferred_layer 4
set_ccopt_property route_type clkroute -net_type trunk
set_ccopt_property route_type clkroute -net_type leaf
set_ccopt_property buffer_cells BUFX1
set_ccopt_property inverter_cells {INVX1 INVX2 INVX4 INVX8 INVX16 INVX32}
create_ccopt_clock_tree_spec -file ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk true
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property clock_period -pin clk 100
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk/constraint -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/constraint true
set_ccopt_property extracted_from_clock_name -skew_group clk/constraint clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/constraint constraint
set_ccopt_property extracted_from_delay_corners -skew_group clk/constraint {wc bc}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design -cts
saveDesign DBS/soc_top-cts.enc
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_net -isVisible 0
setLayerPreference node_floorplan -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_net -isVisible 0
selectInst soc/soc_memory_sram_1
deselectAll
selectInst soc/soc_memory_sram_2
deselectAll
selectInst soc/soc_cpu_cpuregs_reg_1
deselectAll
selectInst soc/soc_cpu_cpuregs_reg_2
deselectAll
setLayerPreference clock -isVisible 1
setLayerPreference clock -isVisible 0
setLayerPreference clock -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference pgPower -isVisible 1
setLayerPreference pgPower -isVisible 0
setLayerPreference pgGround -isVisible 1
setLayerPreference pgGround -isVisible 0
setLayerPreference clock -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference METAL1 -isVisible 0
setLayerPreference METAL1 -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference POLY2 -isVisible 1
setLayerPreference POLY2 -isVisible 0
setLayerPreference CONT -isVisible 1
setLayerPreference CONT -isVisible 0
setLayerPreference METAL1 -isVisible 1
setLayerPreference METAL1 -isVisible 0
setLayerPreference VIA12 -isVisible 1
setLayerPreference VIA12 -isVisible 0
setLayerPreference METAL2 -isVisible 1
setLayerPreference METAL2 -isVisible 0
setLayerPreference VIA23 -isVisible 1
setLayerPreference VIA23 -isVisible 0
setLayerPreference VIA23 -isVisible 1
setLayerPreference VIA23 -isVisible 0
setLayerPreference METAL3 -isVisible 1
setLayerPreference METAL3 -isVisible 0
setLayerPreference VIA34 -isVisible 1
setLayerPreference VIA34 -isVisible 0
setLayerPreference METAL4 -isVisible 1
setLayerPreference METAL4 -isVisible 0
setLayerPreference VIA45 -isVisible 1
setLayerPreference VIA45 -isVisible 0
setLayerPreference METAL5 -isVisible 1
setLayerPreference METAL5 -isVisible 0
setLayerPreference VIA56 -isVisible 1
setLayerPreference VIA56 -isVisible 0
setLayerPreference METAL6 -isVisible 1
setLayerPreference METAL6 -isVisible 0
setLayerPreference node_net -isVisible 0
setLayerPreference clock -isVisible 1
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference POLY2 -isVisible 1
setLayerPreference POLY2 -isVisible 0
setLayerPreference CONT -isVisible 1
setLayerPreference CONT -isVisible 0
setLayerPreference METAL1 -isVisible 1
setLayerPreference METAL1 -isVisible 0
setLayerPreference VIA12 -isVisible 1
setLayerPreference VIA12 -isVisible 0
setLayerPreference METAL2 -isVisible 1
setLayerPreference METAL2 -isVisible 0
setLayerPreference VIA23 -isVisible 1
setLayerPreference VIA23 -isVisible 0
setLayerPreference METAL3 -isVisible 1
setLayerPreference METAL3 -isVisible 0
setLayerPreference POLY2 -isVisible 1
setLayerPreference POLY2 -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference METAL3 -isVisible 1
setLayerPreference METAL3 -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_net -isVisible 0
setLayerPreference clock -isVisible 1
setLayerPreference VIA23 -isVisible 1
setLayerPreference METAL3 -isVisible 1
setLayerPreference METAL3 -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference METAL4 -isVisible 1
setLayerPreference METAL3 -isVisible 1
setLayerPreference METAL2 -isVisible 1
setLayerPreference METAL2 -isVisible 0
setLayerPreference METAL6 -isVisible 1
setLayerPreference METAL6 -isVisible 0
setLayerPreference METAL2 -isVisible 1
setLayerPreference METAL2 -isVisible 0
setLayerPreference METAL2 -isVisible 1
setLayerPreference METAL2 -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference VIA56 -isVisible 0
setLayerPreference VIA56 -isVisible 1
setLayerPreference VIA56 -isVisible 0
setLayerPreference VIA56 -isVisible 1
setLayerPreference METAL6 -isVisible 0
setLayerPreference METAL6 -isVisible 1
setLayerPreference METAL6 -isVisible 0
setLayerPreference METAL6 -isVisible 1
setLayerPreference METAL6 -isVisible 0
setLayerPreference METAL6 -isVisible 1
setLayerPreference METAL5 -isVisible 0
setLayerPreference METAL5 -isVisible 1
setLayerPreference METAL4 -isVisible 0
setLayerPreference METAL4 -isVisible 1
setLayerPreference METAL1 -isVisible 0
setLayerPreference METAL1 -isVisible 1
setMultiCpuUsage -localCpu 2 -keepLicense true -acquireLicense 2
setDesignMode -topRoutingLayer 4
setNanoRouteMode -routeWithTimingDriven true -routeTdrEffort 5 -routeWithSiDriven true -drouteFixAntenna true -routeInsertAntennaDiode true -routeAntennaCellName ANTENNA -routeInsertDiodeForClockNets true
routeDesign -globalDetail -wireOpt -viaOpt
saveDesign DBS/soc_top-routed.enc
setLayerPreference node_net -isVisible 1
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference net -isVisible 0
setLayerPreference node_net -isVisible 1
verifyConnectivity -type all -report ./RPT/connectivity.rpt
saveDrc /tmp/innovus_temp_4732_lnissrv4_u1500738_Zyg4BO/vergQTmp6Vvix9/qthread_src.drc
clearDrc
saveDrc /tmp/innovus_temp_4732_lnissrv4_u1500738_Zyg4BO/vergQTmp6Vvix9/qthread_0.drc
saveDrc /tmp/innovus_temp_4732_lnissrv4_u1500738_Zyg4BO/vergQTmp6Vvix9/qthread_1.drc
set_verify_drc_mode -check_only regular
verify_drc -report ./RPT/geometry.rpt
verifyProcessAntenna -report ./RPT/antenna.rpt
verifyProcessAntenna -report ./RPT/antenna.rpt
reportNetStat > ./RPT/netlist_stats_final.rpt
report_area > ./RPT/area_final.rpt
report_timing > ${rpt_dir}/timing_final.rpt
summaryReport -noHtml -outfile ./RPT/summary_report.rpt
saveNetlist -includePowerGround -excludeLeafCell ./HDL/PLACED/soc_top_placed_virtuoso.v
saveNetlist -excludeLeafCell ../HDL/PLACED/soc_top_placed_modelsim.v
write_sdf SDF/${design}_placed.sdf
streamOut GDS/soc_top.gds -mapFile /research/ece/lnis-teaching/Designkits/tsmc180nm/pdk/captable/gds2.map -libName DesignLib -structureName soc_top -units 2000 -mode ALL
pan -492.95600 -177.61300
freeDesign
set init_lef_file { /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/tech.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/sclib_tsmc180.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/padlib_tsmc180.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/full_custom_lib/lef/sclib_tsmc180_antenna.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RA1SHD_RD/RA1SHD_RD.vclef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RA1SHD_RD/RA1SHD_RD_ant.lef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RF2SH/RF2SH.vclef  /research/ece/lnis-teaching/Designkits/tsmc180nm/arm_ip/RF2SH/RF2SH_ant.lef }
set init_mmmc_file { CONF/picosoc.view }
set init_verilog { HDL/GATE/soc_top_m.v }
set init_io_file { SCRIPTS/place_io_pad.io }
set init_pwr_net { VDD }
set init_gnd_net { VSS }
init_design
saveDesign DBS/soc_top-import.enc
setDrawView fplan
fit
floorPlan -site core7T -s 1070 910 80 80 80 80
setDrawView fplan
fit
placeInstance soc/soc_memory_sram_2 318 315 R180
addHaloToBlock 8 8 8 8 -fromInstBox -snapToSite soc/soc_memory_sram_2
placeInstance soc/soc_memory_sram_1 318 1057 R0
addHaloToBlock 8 8 8 8 -fromInstBox -snapToSite soc/soc_memory_sram_1
placeInstance soc/soc_cpu_cpuregs_reg_1 315 575 R0
addHaloToBlock 2 2 2 2 -fromInstBox -snapToSite soc/soc_cpu_cpuregs_reg_1
placeInstance soc/soc_cpu_cpuregs_reg_2 315 805 R0
addHaloToBlock 2 2 2 2 -fromInstBox -snapToSite soc/soc_cpu_cpuregs_reg_2
saveDesign DBS/soc_top-fplan.enc
globalNetConnect VDD -type pgpin -pin VDD -all -verbose
globalNetConnect VSS -type pgpin -pin VSS -all -verbose
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
deleteIoFiller
addIoFiller -cell pad_fill_32 -prefix FILLER -side n
addIoFiller -cell pad_fill_16 -prefix FILLER -side n
addIoFiller -cell pad_fill_8 -prefix FILLER -side n
addIoFiller -cell pad_fill_4 -prefix FILLER -side n
addIoFiller -cell pad_fill_2 -prefix FILLER -side n
addIoFiller -cell pad_fill_1 -prefix FILLER -side n
addIoFiller -cell pad_fill_01 -prefix FILLER -side n
addIoFiller -cell pad_fill_005 -prefix FILLER -side n -fillAnyGap
addIoFiller -cell pad_fill_32 -prefix FILLER -side s
addIoFiller -cell pad_fill_16 -prefix FILLER -side s
addIoFiller -cell pad_fill_8 -prefix FILLER -side s
addIoFiller -cell pad_fill_4 -prefix FILLER -side s
addIoFiller -cell pad_fill_2 -prefix FILLER -side s
addIoFiller -cell pad_fill_1 -prefix FILLER -side s
addIoFiller -cell pad_fill_01 -prefix FILLER -side s
addIoFiller -cell pad_fill_005 -prefix FILLER -side s -fillAnyGap
addIoFiller -cell pad_fill_32 -prefix FILLER -side e
addIoFiller -cell pad_fill_16 -prefix FILLER -side e
addIoFiller -cell pad_fill_8 -prefix FILLER -side e
addIoFiller -cell pad_fill_4 -prefix FILLER -side e
addIoFiller -cell pad_fill_2 -prefix FILLER -side e
addIoFiller -cell pad_fill_1 -prefix FILLER -side e
addIoFiller -cell pad_fill_01 -prefix FILLER -side e
addIoFiller -cell pad_fill_005 -prefix FILLER -side e -fillAnyGap
addIoFiller -cell pad_fill_32 -prefix FILLER -side w
addIoFiller -cell pad_fill_16 -prefix FILLER -side w
addIoFiller -cell pad_fill_8 -prefix FILLER -side w
addIoFiller -cell pad_fill_4 -prefix FILLER -side w
addIoFiller -cell pad_fill_2 -prefix FILLER -side w
addIoFiller -cell pad_fill_1 -prefix FILLER -side w
addIoFiller -cell pad_fill_01 -prefix FILLER -side w
addIoFiller -cell pad_fill_005 -prefix FILLER -side w -fillAnyGap
addRing -type core_rings -follow core -nets {VDD VDD VSS VSS} -center 1 -width {top 10 bottom 10 left 10 right 10} -spacing {top 4 bottom 4 left 4 right 4} -center 1 -layer {top METAL5 bottom METAL5 left METAL6 right METAL6} -use_wire_group 1 -extend_corner {} -jog_distance 0 -snap_wire_center_to_grid None -threshold 0
addStripe -nets {VDD VSS} -layer METAL6 -direction vertical -width 5 -spacing 5 -number_of_sets 10 -start_from left -start_offset 25 -stop_offset 30 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METAL6 -padcore_ring_bottom_layer_limit METAL1 -block_ring_top_layer_limit METAL6 -block_ring_bottom_layer_limit METAL1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addStripe -nets {VDD VSS} -layer METAL5 -direction horizontal -width 5 -spacing 5 -number_of_sets 9 -start_from left -start_offset 30 -stop_offset 30 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METAL6 -padcore_ring_bottom_layer_limit METAL1 -block_ring_top_layer_limit METAL6 -block_ring_bottom_layer_limit METAL1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
saveDesign DBS/soc_top-power.enc
sroute -connect { blockPin corePin padPin floatingStripe} -layerChangeRange { METAL1(1) METAL6(6) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPintarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -crossoverViaLayerRange { METAL1(1) METAL6(6) } -nets { VDD VSS } -allowJogging 1 -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { METAL1(1) METAL6(6)}
fit
saveDesign DBS/soc_top-power-routed.enc
setMultiCpuUsage -localCpu 2 -keepLicense true -acquireLicense 2
setDesignMode -process 180
setDesignMode -topRoutingLayer 4
setPlaceMode -timingDriven true -congEffort high -placeIOPins 1 -place_global_max_density 0.45
place_design
setDrawView place
checkPlace ./RPT/place.rpt
saveDesign DBS/soc_top-placed.enc
setMultiCpuUsage -localCpu 2 -keepLicense true -acquireLicense 2
set_ccopt_property route_type_override_preferred_routing_layer_effort none
setDesignMode -topRoutingLayer 4
setDesignMode -bottomRoutingLayer 2
create_route_type -name clkroute -top_preferred_layer 4
set_ccopt_property route_type clkroute -net_type trunk
set_ccopt_property route_type clkroute -net_type leaf
set_ccopt_property buffer_cells BUFX1
set_ccopt_property inverter_cells {INVX1 INVX2 INVX4 INVX8 INVX16 INVX32}
create_ccopt_clock_tree_spec -file ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk true
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property clock_period -pin clk 100
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk/constraint -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/constraint true
set_ccopt_property extracted_from_clock_name -skew_group clk/constraint clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/constraint constraint
set_ccopt_property extracted_from_delay_corners -skew_group clk/constraint {wc bc}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design -cts
saveDesign DBS/soc_top-cts.enc
setMultiCpuUsage -localCpu 2 -keepLicense true -acquireLicense 2
setDesignMode -topRoutingLayer 4
setNanoRouteMode -routeWithTimingDriven true -routeTdrEffort 5 -routeWithSiDriven true -drouteFixAntenna true -routeInsertAntennaDiode true -routeAntennaCellName ANTENNA -routeInsertDiodeForClockNets true
routeDesign -globalDetail -wireOpt -viaOpt
saveDesign DBS/soc_top-routed.enc
addFiller -cell {FILL32 FILL16 FILL8 FILL4 FILL2 FILL1} -prefix FILLER
setDrawView place
saveDesign DBS/soc_top-filled.enc
verifyConnectivity -type all -report ./RPT/connectivity.rpt
saveDrc /tmp/innovus_temp_4732_lnissrv4_u1500738_Zyg4BO/vergQTmpqYBDDH/qthread_src.drc
clearDrc
saveDrc /tmp/innovus_temp_4732_lnissrv4_u1500738_Zyg4BO/vergQTmpqYBDDH/qthread_0.drc
saveDrc /tmp/innovus_temp_4732_lnissrv4_u1500738_Zyg4BO/vergQTmpqYBDDH/qthread_1.drc
loadDrc -incremental /tmp/innovus_temp_4732_lnissrv4_u1500738_Zyg4BO/vergQTmpqYBDDH/qthread_src.drc
set_verify_drc_mode -check_only regular
verify_drc -report ./RPT/geometry.rpt
verifyProcessAntenna -report ./RPT/antenna.rpt
verifyProcessAntenna -report ./RPT/antenna.rpt
reportNetStat > ./RPT/netlist_stats_final.rpt
report_area > ./RPT/area_final.rpt
report_timing > ${rpt_dir}/timing_final.rpt
summaryReport -noHtml -outfile ./RPT/summary_report.rpt
saveNetlist -includePowerGround -excludeLeafCell ./HDL/PLACED/soc_top_placed_virtuoso.v
saveNetlist -excludeLeafCell ../HDL/PLACED/soc_top_placed_modelsim.v
write_sdf SDF/${design}_placed.sdf
streamOut GDS/soc_top.gds -mapFile /research/ece/lnis-teaching/Designkits/tsmc180nm/pdk/captable/gds2.map -libName DesignLib -structureName soc_top -units 2000 -mode ALL

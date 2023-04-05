quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "D:/project/program/QUARTUS/eda/Adders_Smart"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/smartgen/Core_adder/Core_adder.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/Fadd1.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/halfadder.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/component/work/adder_3/adder_3.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/testbench3.v"

vsim -L proasic3 -L presynth  -t 1ps presynth.testbench3
add wave /testbench3/*
run 1000ns

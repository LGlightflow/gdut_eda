quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "D:/project/program/QUARTUS/eda/Verilog1"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/component/work/match4/match4.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/testbench1.v"

vsim -L proasic3 -L presynth  -t 1ps presynth.testbench1
add wave /testbench1/*
run 1000ns

# Created by Microsemi Libero Software 11.9.0.4
# Mon Dec 19 00:44:29 2022

# (OPEN DESIGN)

open_design "HC74.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "HC74_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\project\program\QUARTUS\eda\HC74\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design

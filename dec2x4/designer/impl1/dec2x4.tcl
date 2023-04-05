# Created by Microsemi Libero Software 11.9.0.4
# Mon Dec 19 14:35:06 2022

# (OPEN DESIGN)

open_design "dec2x4.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "dec2x4_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\project\program\QUARTUS\eda\dec2x4\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {dec2x4_place_and_route_report.txt}
report -type "globalnet" {dec2x4_globalnet_report.txt}
report -type "globalusage" {dec2x4_globalusage_report.txt}
report -type "iobank" {dec2x4_iobank_report.txt}
report -type "pin" -listby "name" {dec2x4_report_pin_byname.txt}
report -type "pin" -listby "number" {dec2x4_report_pin_bynumber.txt}

save_design

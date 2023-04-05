# Created by Microsemi Libero Software 11.9.0.4
# Sat Dec 17 21:31:28 2022

# (OPEN DESIGN)

open_design "encoder8_3_1.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "encoder8_3_1_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\project\program\QUARTUS\eda\HC148\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {encoder8_3_1_place_and_route_report.txt}
report -type "globalnet" {encoder8_3_1_globalnet_report.txt}
report -type "globalusage" {encoder8_3_1_globalusage_report.txt}
report -type "iobank" {encoder8_3_1_iobank_report.txt}
report -type "pin" -listby "name" {encoder8_3_1_report_pin_byname.txt}
report -type "pin" -listby "number" {encoder8_3_1_report_pin_bynumber.txt}

save_design

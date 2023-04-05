# Created by Microsemi Libero Software 11.9.0.4
# Wed Nov 30 20:53:56 2022

# (OPEN DESIGN)

open_design "adder_3.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "adder_3_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\project\program\QUARTUS\eda\Adders_Smart\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {adder_3_place_and_route_report.txt}
report -type "globalnet" {adder_3_globalnet_report.txt}
report -type "globalusage" {adder_3_globalusage_report.txt}
report -type "iobank" {adder_3_iobank_report.txt}
report -type "pin" -listby "name" {adder_3_report_pin_byname.txt}
report -type "pin" -listby "number" {adder_3_report_pin_bynumber.txt}

save_design

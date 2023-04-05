new_project \
    -name {encoder8_3_1} \
    -location {D:\project\program\QUARTUS\eda\HC148\designer\impl1\encoder8_3_1_fp} \
    -mode {single}
set_programming_file -file {D:\project\program\QUARTUS\eda\HC148\designer\impl1\encoder8_3_1.pdb}
set_programming_action -action {PROGRAM}
run_selected_actions
save_project
close_project

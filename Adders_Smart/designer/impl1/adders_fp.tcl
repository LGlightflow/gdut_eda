new_project \
    -name {adders} \
    -location {D:\project\program\QUARTUS\eda\Adders_Smart\designer\impl1\adders_fp} \
    -mode {single}
set_programming_file -file {D:\project\program\QUARTUS\eda\Adders_Smart\designer\impl1\adders.pdb}
export_single_stapl -file {D:\project\program\QUARTUS\eda\Adders_Smart\designer\impl1\adders.stp}
save_project
close_project

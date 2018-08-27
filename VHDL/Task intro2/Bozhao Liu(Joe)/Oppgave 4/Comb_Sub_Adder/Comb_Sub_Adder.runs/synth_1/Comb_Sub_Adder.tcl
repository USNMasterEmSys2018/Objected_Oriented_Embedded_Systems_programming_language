# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.cache/wt} [current_project]
set_property parent.project_path {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.srcs/sources_1/new/subtractor.vhd}
  {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.srcs/sources_1/new/Three_bit_subtractor2.vhd}
  {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.srcs/sources_1/new/full_adder.vhd}
  {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.srcs/sources_1/new/Three_bit_adder.vhd}
  {/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.srcs/sources_1/new/Comb_Sub_Adder.vhd}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.srcs/constrs_1/new/Comb_sub_Adder.xdc}}
set_property used_in_implementation false [get_files {{/media/bozhao/Storage/Study USN/VHDL/Oppgave/Oppgave intro2/Oppgave 4/Comb_Sub_Adder/Comb_Sub_Adder.srcs/constrs_1/new/Comb_sub_Adder.xdc}}]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Comb_Sub_Adder -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Comb_Sub_Adder.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Comb_Sub_Adder_utilization_synth.rpt -pb Comb_Sub_Adder_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]

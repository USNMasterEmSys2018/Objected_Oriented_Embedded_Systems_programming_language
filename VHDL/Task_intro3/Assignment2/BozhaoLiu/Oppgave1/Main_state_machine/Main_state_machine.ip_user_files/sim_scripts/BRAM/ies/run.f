-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BRAM/sim/BRAM.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

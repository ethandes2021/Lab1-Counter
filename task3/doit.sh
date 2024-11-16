rm -rf obj_dir
rm -f counter.vcd
~/Documents/iac/lab0-devtools/tools/attach_usb.sh
verilator -Wall --cc --trace counter.sv --exe counter_tb.cpp

make -j -C obj_dir/ -f Vcounter.mk Vcounter

obj_dir/Vcounter
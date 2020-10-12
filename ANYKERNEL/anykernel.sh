# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=-#- DirtyDragons Caf MSM-4.9 r27 Branch For Moto G7 Power Ocean Stock-Q -#-
do.devicecheck=1
do.modules=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ocean
supported.versions=
supported.patchlevels=
'; } # end properties


block=/dev/block/by-name/boot;
is_slot_device=auto;
ramdisk_compression=lzma;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel install
dump_boot;


ui_print "Device: Moto G7 Power (OCEAN)"
ui_print "Kernel Name: DirtyDragons Stock Q"
ui_print "Build User: root = javashin"
ui_print "KVer: 4.9.239-Pre-DirtyDragons_rV6+ jsX-DirtyDragons SMP PREEMPT aarch64"
ui_print "Sunday, October 11 2020"


write_boot;
## end install


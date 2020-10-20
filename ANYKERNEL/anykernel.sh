# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=-#- DirtyDragons Caf MSM-4.9-r27 Branch For Moto G7 Play Channel -#-
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=channel
device.name2=
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables

block=/dev/block/by-name/boot;
is_slot_device=auto;
ramdisk_compression=lzma;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install

ui_print " "
ui_print "Device: Moto G7 Play (CHANNEL)"
ui_print "Kernel Name: DirtyDragons-Channel"
ui_print "Build User: root = javashin"
ui_print "KVer: 4.9.240-DirtyDragons_rV8+ G7-Play SMP PREEMPT aarch64"
ui_print "Thuesday, October 20 2020"
ui_print " "

dump_boot;
write_boot;
## end install


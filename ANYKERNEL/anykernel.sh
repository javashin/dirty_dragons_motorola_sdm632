# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=(*) Blue-Virtual-Dragon kernel.lnx.4.9.r27 (*)
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=ocean
device.name2=
supported.versions=
supported.patchlevels=
'; } # end properties

block=/dev/block/by-name/boot;
is_slot_device=auto;
ramdisk_compression=lzma;

. tools/ak3-core.sh;

ui_print "Device: Moto G7 Power (OCEAN)"
ui_print "Kernel Name: Blue-Virtual-Dragon "
ui_print "Build User: root = javashin"
ui_print "KVer: 4.9.240-perf+ Blue-Virtual-Dragon SMP PREEMPT aarch64"
ui_print "Wed, October 21 2020"


dump_boot;
write_boot;



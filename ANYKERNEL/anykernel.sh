# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=-#(-) DirtyDragons (-) Caf MSM-4.9-r27 Branch For Moto G7 Power Ocean -#-
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

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

ui_print "Device: Moto G7 Power (OCEAN)"
ui_print "Kernel Name: DirtyDragons"
ui_print "Build User: root = javashin"
ui_print "KVer: 4.9.239-DirtyDragons_rV7+ jsX-DirtyDragons SMP PREEMPT aarch64"
ui_print "Thursday October 15 2020"
ui_print "Toolchain Info:"
ui_print "gcc version 11.0.0 20201006 (experimental) (Gentoo 11.0.0_pre9999 p4, commit 85307b4e938d42201d6c232f5d9259f91133a303)"
ui_print "GNU ld (Gentoo 2.35.1 p1) 2.35.1"
ui_print "JavaShin-X"

## AnyKernel install
dump_boot;
write_boot;
## end install


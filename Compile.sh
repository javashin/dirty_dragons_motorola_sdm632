#!/bin/bash
clear 

echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
date
echo "Start Compilation ^^^^^@^^^^  Time"
echo "Set TurboBoost For Faster Android Kernal Compilation"
/usr/bin/cpupower frequency-set -g performance
/usr/sbin/x86_energy_perf_policy performance
echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Preparing"
sleep 1

umount /OUT
rm -rf /OUT
export ARCH=arm64
export SUBARCH=arm
mkdir /OUT
mount /OUT

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Configuring SelinuxKernel Enforce."
sleep 1

PATH="/cross-tc/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=/cross-tc/bin/clang LD=/cross-tc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE=/cross-tc/bin/aarch64-elf- CROSS_COMPILE=/cross-tc/bin/aarch64-elf- ocean_defconfig

#PATH="/cross-tc/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=/cross-tc/bin/clang LD=/cross-tc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE=/cross-tc/bin/aarch64-elf- CROSS_COMPILE=/cross-tc/bin/aarch64-elf- oldconfig

#PATH="/cross-tc/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=/cross-tc/bin/clang LD=/cross-tc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE=/cross-tc/bin/aarch64-elf- CROSS_COMPILE=/cross-tc/bin/aarch64-elf- nconfig

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Compiling"
sleep 1

PATH="/cross-tc/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=/cross-tc/bin/clang LD=/cross-tc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/cross-tc/bin/arm-eabi- CLANG_TRIPLE=/cross-tc/bin/aarch64-elf- CROSS_COMPILE=/cross-tc/bin/aarch64-elf-  
#yCONFIG_DEBUG_SECTION_MISMATCH=y


echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "DONE"

echo "Set Normal Speed To Cooldown CPU After Compilation"
/usr/bin/cpupower frequency-set -g powersave
/usr/sbin/x86_energy_perf_policy power
echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo

cp /OUT/arch/arm64/boot/Image.gz-dtb .
ls -lash /OUT/arch/arm64/boot/Image.gz-dtb
ls -lash ./Image.gz-dtb

echo "YAY"
echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
echo "DONE By JavaShin-X 2020"

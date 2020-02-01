###kernel build

#change CROSS_COMPILE location to yours

export CROSS_COMPILE=/home/ondrej/kernel/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-elf/bin/aarch64-elf-

make ARCH=arm64 O=../out mrproper

make ARCH=arm64 O=../out papaya_defconfig

make ARCH=arm64 O=../out -j$(nproc --all)


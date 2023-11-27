DEVICE_TREE := device/samsung/gtanotexllte

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7870

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-t830mp2

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_USES_UNCOMPRESSED_KERNEL := true
#TARGET_KERNEL_SOURCE := kernel/samsung/universal7870
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := twrp_defconfig
TARGET_KERNEL_DEVICE_DEFCONFIG := device_gtanotexllte_ktt

TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/prebuilt/Image
TARGET_PREBUILT_DT := $(DEVICE_TREE)/prebuilt/dt.img

# DTB
TARGET_DTBH_PLATFORM_CODE := 0x000050a6
TARGET_DTBH_SUBTYPE_CODE  := 0x217584da

# Boot image
BOARD_KERNEL_CMDLINE := # Exynos doesn't take cmdline arguments from boot image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
# 000RU = recovery kernel, 000KU = system kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPPG02A000RU
BOARD_CUSTOM_BOOTIMG_MK :=  $(DEVICE_TREE)/bootimg.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x002000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0DF800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x2A5FFB000 # 0x2A6000000 - 20480 (footer)
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x00C800000
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13600000.usb/13600000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
# exFAT drivers included in the kernel
TW_NO_EXFAT_FUSE := true
# No love for the wicked (device ships with M)
TW_EXCLUDE_SUPERSU := true

# Encryption support
TW_INCLUDE_CRYPTO := true
# Samsung's encryption is currently unsupported
#TW_INCLUDE_CRYPTO_SAMSUNG := true
#TARGET_HW_DISK_ENCRYPTION := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Debug flags
#TWRP_INCLUDE_LOGCAT := true

# Init properties from bootloader version, ex. model info
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_gtanotexllte
TARGET_RECOVERY_DEVICE_MODULES := libinit_gtanotexllte
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_TREE)/init/init_gtanotexllte.cpp

USE_CAMERA_STUB := true

# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM := mt6589t
TARGET_BOARD_PLATFORM_GPU := pvr544mp
TARGET_BOOTLOADER_BOARD_NAME := s960
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true

BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/s960/OutImages.mk

# Kernel
BOARD_KERNEL_CMDLINE := 
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_RECOVERY_INITRC := device/lenovo/s960/recovery/init.rc
TARGET_PREBUILT_RECOVERY_KERNEL := device/lenovo/s960/kernel
TARGET_PREBUILT_KERNEL := device/lenovo/s960/kernel

# File System
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00c00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x5dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x315da0000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x17a00000
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
DEVICE_RESOLUTION := 1080x1920

RECOVERY_GRAPHICS_USE_LINELENGTH := true 	# fixes slanty looking graphics on some devices
RECOVERY_SDCARD_ON_DATA := true 			# this enables proper handling of /data/media on devices that have this folder for storage
BOARD_HAS_NO_REAL_SDCARD := true 			# disables things like sdcard partitioning and may save you some space if TWRP isn't fitting in your recovery patition
#TW_INCLUDE_DUMLOCK := true 				# includes HTC Dumlock for devices that need it

TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

TW_FLASH_FROM_STORAGE := true 				# flashes zips from their current location instead of copying them to /tmp for ROMs that are too large to fit in RAM.
TW_NO_REBOOT_BOOTLOADER := true 			# removes the reboot bootloader button from the reboot menu
TW_NO_REBOOT_RECOVERY := false 				# removes the reboot recovery button from the reboot menu
TW_NO_USB_STORAGE := true 					# removes the USB storage button on devices that don't support USB storage

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

SP1_NAME := "uboot"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "nvram"
SP2_DISPLAY_NAME := "nvram"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0

#TW_NO_BATT_PERCENT := false 				# disables the display of the battery percentage for devices that don't support it properly
#TW_CUSTOM_POWER_BUTTON := 107 				# custom maps the power button for the lockscreen
#RECOVERY_TOUCHSCREEN_SWAP_XY := false 		# swaps the mapping of touches between the X and Y axis
#RECOVERY_TOUCHSCREEN_FLIP_Y := false 		# flips y axis touchscreen values
#RECOVERY_TOUCHSCREEN_FLIP_X := false 		# flips x axis touchscreen values
#TW_ALWAYS_RMRF := true 					# forces the rm -rf option to always be on (needed for some Motorola devices)
#TW_NEVER_UNMOUNT_SYSTEM := true 			# never unmount system (needed for some Motorola devices)
#TW_INCLUDE_INJECTTWRP := true 				# adds ability to inject TWRP into some Samsung boot images for Samsung devices that have recovery as a second ramdisk in the boot image
#TW_DEFAULT_EXTERNAL_STORAGE := true 		# defaults to external storage instead of internal on dual storage devices (largely deprecated)
#HAVE_SELINUX := true 						# includes SELinux support for backup/restore, required for CM10.2 and requires CM10.0 or higher (CM9 and below do not have libselinux)
#TWRP_EVENT_LOGGING := true 				# enables touch event logging to help debug touchscreen issues (don't leave this on for a release - it will fill up your logfile very quickly)

#Here's some flags that may help you, but are not specific to TWRP (works in CWM too):
#This flag has multiple options, but can be used to set different graphics modes that may be need to correct color space issues on some devices:
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
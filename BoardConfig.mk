#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

-include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/wileyfox/crackling

TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Kernel
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_CONFIG := cyanogenmod_crackling-64_defconfig

ifneq ($(TARGET_BUILD_VARIANT),user)
TARGET_KERNEL_ADDITIONAL_CONFIG := cyanogenmod_debug_config
endif

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_CAMERA_SENSORS := s5k5e2_olq5f19 s5k3m2_olqba20
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# GPS
TARGET_GPS_HAL_PATH := $(DEVICE_PATH)/gps
TARGET_NO_RPC := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33553920
BOARD_CACHEIMAGE_PARTITION_SIZE := 157285888
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33553920
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33553920
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612224
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13295385600

# Recovery
TARGET_OTA_ASSERT_DEVICE := crackling,vixen

# Wifi - EAP-SIM
CONFIG_EAP_PROXY := qmi
CONFIG_EAP_PROXY_DUAL_SIM := true

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/wileyfox/crackling/sepolicy


# inherit from the proprietary version
-include vendor/wileyfox/crackling/BoardConfigVendor.mk

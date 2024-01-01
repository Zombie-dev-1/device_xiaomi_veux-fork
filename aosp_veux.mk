#
# Copyright (C) 2023 The LineageOS Project
#               
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)

# Inherit some common FireDroid stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Rom Specific Flags
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true

# FireDroid Maintainer Flags
FIREDROID_MAINTAINER := MrTopiA
CUSTOM_BUILD_TYPE := OFFICIAL

# AOSP Recovery
TARGET_USES_AOSP_RECOVERY := true

# BOOT_ANIMATION
TARGET_BOOT_ANIMATION_RES := 1440

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

#Blur effect
TARGET_ENABLE_BLUR := true	

# Device identifier
PRODUCT_NAME := aosp_veux
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X4 Pro 5G

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

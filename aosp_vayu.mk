#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit PixelExperience configurations
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_USES_AOSP_RECOVERY := true

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

PRODUCT_NAME := aosp_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 11 RKQ1.200826.002 V12.5.7.0.RJUMIXM release-keys" \
    PRODUCT_NAME="vayu"

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:11/RKQ1.200826.002/V12.5.7.0.RJUMIXM:user/release-keys

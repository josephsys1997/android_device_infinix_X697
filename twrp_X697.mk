#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X697 device
$(call inherit-product, device/infinix/X697/device.mk)

PRODUCT_DEVICE := X697
PRODUCT_NAME := twrp_X697
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Note 11 Pro
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x697_h812-user 11 RP1A.200720.011 460220 release-keys"

BUILD_FINGERPRINT := Infinix/X697-OP/Infinix-X697:11/RP1A.200720.011/231023V1233:user/release-keys

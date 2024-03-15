#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-KH6 device
$(call inherit-product, device/tecno/TECNO-KH6/device.mk)

PRODUCT_DEVICE := TECNO-KH6
PRODUCT_NAME := omni_TECNO-KH6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KH6
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_kh6_h6513-user 12 SP1A.210812.016 503460 release-keys"

BUILD_FINGERPRINT := TECNO/KH6-OP/TECNO-KH6:12/SP1A.210812.016/231214V1490:user/release-keys

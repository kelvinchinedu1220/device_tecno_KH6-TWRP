#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from KH6 device
$(call inherit-product, device/tecno/KH6/device.mk)

PRODUCT_DEVICE := KH6
PRODUCT_NAME := pb_KH6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KH6
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

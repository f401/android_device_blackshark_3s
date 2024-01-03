#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from klein device
$(call inherit-product, device/blackshark/klein/device.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from AOSP base config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

PRODUCT_DEVICE := klein
PRODUCT_NAME := twrp_klein
PRODUCT_BRAND := blackshark
PRODUCT_MODEL := SHARK KLE-A0
PRODUCT_MANUFACTURER := blackshark

PRODUCT_GMS_CLIENTID_BASE := android-blackshark

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="KLE-A0-user 11 KLEN2110261CN00MR3 V11.0.4.0.JOYUI release-keys"

BUILD_FINGERPRINT := blackshark/KLE-A0/klein:11/KLEN2110261CN00MR3/V11.0.4.0.JOYUI:user/release-keys

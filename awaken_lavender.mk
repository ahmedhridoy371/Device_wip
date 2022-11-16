#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common awaken stuff
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 720

# GApps
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

# Google Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Google Assistant
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Official
AWAKEN_BUILD_TYPE := unofficial

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/device-hidl.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := awaken_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGMIXM release-keys"

BUILD_FINGERPRINT :="xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGMIXM:user/release-keys"

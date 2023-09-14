#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

include device/google/bonito/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
PRODUCT_NAME := spark_sargo

SPARK_BUILD_TYPE := UNOFFICIAL
WITH_GAPPS := true
USE_PIXEL_CHARGER := true

TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true


PRODUCT_PRODUCT_PROPERTIES += \
  ro.control_privapp_permissions=log \
  ro.spark.maintainer=NexiaMoe

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sargo \
    PRIVATE_BUILD_DESC="sargo-user 12 SP2A.220505.008 8782922 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:12/SP2A.220505.008/8782922:user/release-keys

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)

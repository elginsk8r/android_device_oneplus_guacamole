#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# AAPT
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_11811.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_11811.xml \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml

# Camera
PRODUCT_PACKAGES += \
    vendor.evervolv.camera.motor@1.0 \
    vendor.evervolv.camera.motor@1.0-service.oneplus_msmnile \
    OnePlusCameraHelper

# Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.3-service.oneplus_msmnile

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

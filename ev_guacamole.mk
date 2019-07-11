# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/aosp_guacamole.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Bootanimation
BOOT_ANIMATION_SIZE := 1080p

PRODUCT_NAME := ev_guacamole
PRODUCT_MODEL := guacamole

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:9/PKQ1.190110.001/1906032330:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7Pro \
    PRODUCT_NAME=OnePlus7Pro \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 9 PKQ1.190110.001 1906032330 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_CODENAME := Expletus
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your OnePlus 7 Pro\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

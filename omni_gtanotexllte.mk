#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gtanotexllte device
$(call inherit-product, device/samsung/gtanotexllte/device.mk)


PRODUCT_PACKAGES += \
	charger_res_images \
	charger

PRODUCT_DEVICE := gtanotexllte
PRODUCT_NAME := omni_gtanotexllte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P585M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gtanotexllteub-user 8.1.0 M1AJQ P585MUBS2CTJ1 release-keys"

BUILD_FINGERPRINT := samsung/gtanotexllteub/gtanotexllte:8.1.0/M1AJQ/P585MUBS2CTJ1:user/release-keys

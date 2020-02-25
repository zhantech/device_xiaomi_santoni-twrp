#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration.
$(call inherit-product, vendor/omni/config/common.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := santoni
PRODUCT_NAME := omni_santoni
PRODUCT_RELEASE_NAME := santoni
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 4X
TARGET_VENDOR := Xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8937

#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk) # vab加载到vendor boot里使用

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk) # twrp-9分支改为onmi

# Device specific configs
$(call inherit-product, device/xiaomi/rubens/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t982_ar301
PRODUCT_NAME := twrp_t982_ar301
PRODUCT_BRAND := Droidlogic
PRODUCT_MODEL := Droidlogic
PRODUCT_MANUFACTURER := droidlogic

#PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true # 对twrp启动vendor_boot支持
PRODUCT_RELEASE_NAME := Droidlogic Droidlogic

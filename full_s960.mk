# Copyright (C) 2011 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/s960/s960-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/s960/overlay

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/sec.ko:recovery/root/sec.ko \
	$(LOCAL_PATH)/MT6589_Android_scatter_emmc.txt:MT6589_Android_scatter_emmc.txt


# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := s960
PRODUCT_DEVICE := s960
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := S960

#           (C) 2017 The LineageOS Project
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

# Inherit from NE501J device
$(call inherit-product, device/NUBIA/NE501J/NE501J.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cardinal/config/common.mk)

PRODUCT_NAME := cardinal_NE501J
PRODUCT_DEVICE := NE501J
PRODUCT_MANUFACTURER := Nubia
PRODUCT_MODEL := NE501J

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BRAND := Nubia
TARGET_VENDOR := Nubia
TARGET_VENDOR_PRODUCT_NAME := ZTE
TARGET_VENDOR_DEVICE_NAME := NE501J
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NE501J PRODUCT_NAME=NE501J

PRODUCT_PROPERTY_OVERRIDES += \
        ro.ota.romname=RR-NE501J \
        ro.ota.manifest=https://raw.githubusercontent.com/XNUBIA/RR-ota/master/RR_ota.xml \
        ro.ota.version=$(shell date +%Y%m%d)
PRODUCT_PACKAGES += OTAUpdates

WITH_SU := true


## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := S960

# Inherit device configuration
$(call inherit-product, device/lenovo/s960/full_s960.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s960
PRODUCT_NAME := cm_s960
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := S960
PRODUCT_MANUFACTURER := Lenovo
# Release name
PRODUCT_RELEASE_NAME := pmec2

# Inherit some common SM stuff.
$(call inherit-product, vendor/sm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pmec2/device_pmec2.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/sm/config/common.mk)

# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
    
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pmec2
PRODUCT_NAME := sm_pmec2
PRODUCT_BRAND := htc
PRODUCT_MODEL := pmec2
PRODUCT_MANUFACTURER := htc

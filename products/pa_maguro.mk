# Check for target product
ifeq (pa_maguro,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# include missing proprietaries
PRODUCT_COPY_FILES += \
  vendor/pa/proprietary/maguro/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd

# Inherit CM9 device configuration
$(call inherit-product, device/samsung/maguro/cm.mk)

PRODUCT_NAME := pa_maguro

TARGET_FAMILY := pa_tuna

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif


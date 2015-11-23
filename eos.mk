# Release name
PRODUCT_RELEASE_NAME := Galaxy Nexus

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/tuna/aosp_tuna.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/eos/config/common.mk)
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := tuna
PRODUCT_NAME := eos_tuna
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
#PRODUCT_PACKAGES += Torch

# TouchControl package.
PRODUCT_PACKAGES += \
	TouchControl

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip

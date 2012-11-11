# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/full_supersonic.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic:2.3.5/GRJ90/239674.3:user/release-keys PRIVATE_BUILD_DESC="4.67.651.3 CL239674 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Supersonic
PRODUCT_VERSION_DEVICE_SPECIFIC := B3

PRODUCT_MOTD :="\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n****************************\nMazWoz ROMs proudly presents\n----------------------------\nMazWoz-EVO Supersonic JB B3\n----------------------------\nvisit mazwoz.zamzow.us today\n****************************\n"

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip

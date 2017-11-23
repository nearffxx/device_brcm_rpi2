$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := rpi2
PRODUCT_DEVICE := rpi2
PRODUCT_BRAND := AndroidTV
PRODUCT_MODEL := AndroidTV on rpi2
PRODUCT_MANUFACTURER := brcm

PRODUCT_AAPT_CONFIG := normal tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

PRODUCT_PACKAGES += \
    libGLES_android

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rpi2_core_hardware.xml:system/etc/permissions/rpi2_core_hardware.xml \
    $(LOCAL_PATH)/init.rc:root/init.rc \
    $(LOCAL_PATH)/init.rpi2.rc:root/init.rpi2.rc \
    $(LOCAL_PATH)/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/fstab.rpi2:root/fstab.rpi2 \
    $(LOCAL_PATH)/Generic.kl:system/usr/keylayout/Generic.kl \
    $(PRODUCT_COPY_FILES)

DEVICE_PACKAGE_OVERLAYS := device/brcm/rpi2/overlay
PRODUCT_CHARACTERISTICS := tablet,nosdcard
PRODUCT_LOCALES := en_US,ko_KR,ja_JP,zh_CN

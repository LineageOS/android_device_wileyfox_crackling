# Audio
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.audio.sdk.fluencetype=fluence \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicerec=false \
persist.vendor.audio.fluence.speaker=false

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.camera.cpp.duplication=false \
persist.camera.hal.debug.mask=0

# Display
PRODUCT_PROPERTY_OVERRIDES += \
ro.sf.lcd_density=320

# Factory reset protection
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/platform/soc.0/7824900.sdhci/by-name/frp

# First api level, device has been commercially launched
PRODUCT_PROPERTY_OVERRIDES += \
ro.product.first_api_level=22

# Latest hardware revision supported
PRODUCT_PROPERTY_OVERRIDES += \
ro.product.model.platform=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
persist.radio.multisim.config=dsds \
persist.radio.custom_ecc=1 \
persist.radio.ecc_hard_1=998 \
persist.radio.ecc_hard_count=1 \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
ro.telephony.default_network=9,9

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
ro.lineage.build.vendor_security_patch=2017-01-01

# Treble
PRODUCT_PROPERTY_OVERRIDES += \
ro.treble.enable=true

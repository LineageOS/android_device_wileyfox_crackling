# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.radio.custom_ecc=1 \
    persist.radio.ecc_hard_1=998 \
    persist.radio.ecc_hard_count=1 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.telephony.default_network=9,9

# RIL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml

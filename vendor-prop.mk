# Audio
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.audio.sdk.fluencetype=fluence \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicerec=false \
persist.vendor.audio.fluence.speaker=false \
af.fast_track_multiplier=1 \
audio.deep_buffer.media=true \
audio.offload.min.duration.secs=30 \
audio.offload.video=true \
vendor.audio.av.streaming.offload.enable=true \
vendor.audio.offload.buffer.size.kb=64 \
vendor.audio.offload.gapless.enabled=true \
vendor.audio_hal.period_size=192 \
vendor.voice.path.for.pcm.voip=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.camera.cpp.duplication=false \
persist.camera.hal.debug.mask=0

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
qcom.bluetooth.soc=smd \
ro.bluetooth.dun=true \
ro.bluetooth.hfp.ver=1.7 \
ro.bluetooth.sap=true \
ro.qualcomm.bt.hci_transport=smd

# Display
PRODUCT_PROPERTY_OVERRIDES += \
ro.sf.lcd_density=320 \
debug.hwui.use_buffer_age=false \
debug.composition.type=c2d \
debug.mdpcomp.idletime=600 \
persist.hwc.mdpcomp.enable=true \
persist.hwc.ptor.enable=true \
debug.enable.sglscale=1 \
ro.opengles.version=196608

# Media
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=1 \
vidc.enc.narrow.searchrange=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.max_starting_bg=8 \
ro.vendor.extension_library=libqti-perfd-client.so \
ro.core_ctl_min_cpu=0 \
ro.core_ctl_max_cpu=4 \
ro.min_freq_0=800000

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
ro.telephony.default_network=9,9 \
persist.data.qmi.adb_logmask=0 \
persist.radio.apm_sim_not_pwdn=1 \
ro.telephony.call_ring.multiple=false

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
ro.lineage.build.vendor_security_patch=2017-01-01

# Treble
PRODUCT_PROPERTY_OVERRIDES += \
ro.treble.enable=true

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

# Wi-Fi display
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.wfd.enable=1

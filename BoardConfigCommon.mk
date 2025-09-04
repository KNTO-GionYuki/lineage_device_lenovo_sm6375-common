#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/lenovo/sm6375-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

#TARGET_2ND_ARCH := arm
#TARGET_2ND_ARCH_VARIANT := armv8-a
#TARGET_2ND_CPU_ABI := armeabi-v7a
#TARGET_2ND_CPU_ABI2 := armeabi
#TARGET_2ND_CPU_VARIANT := generic
#TARGET_2ND_CPU_VARIANT_RUNTIME := kryo385

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel

##quimela

KHEADERS_VER := 5.4.210

TARGET_KERNEL_HEADERS := $(COMMON_PATH)/prebuilt/kernels/$(KHEADERS_VER)-headers/usr
# prebuilt kernel list
# stock-a301lv
# 5.4.210-fullLTO
# 5.4.210-WCN36XX(depricated)
# 5.4.410-qcacld3
# 5.4.210-rmnet
####Beta status
# 5.4.210-ipa3
# 5.4.210-fullLTO-KNTO-beta-2025-0826-0052
# 5.4.210-2025-0901-2330
# 5.4.210-2025-0902-0009
# 5.4.210-2025-0902-0136
# 5.4.210-2025-0902-0215
# 5.4.210-2025-0902-0252
# 5.4.210-2025-0902-2348
# 5.4.210-2025-0903-0114(DRM_MSM_DT) antutu dead
# 5.4.210-2025-0902-2348

KERNEL_VER := 5.4.210-2025-0903-0114
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(COMMON_PATH)/prebuilt/kernels/$(KERNEL_VER)/kernel
BOARD_PREBUILT_DTBIMAGE_DIR := $(COMMON_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(COMMON_PATH)/prebuilt/dtbo-A301LV.img



BOARD_BOOT_HEADER_VERSION := 3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := \
    androidboot.console=ttyMSM0 \
    androidboot.hardware=qcom \
    androidboot.memcg=1 \
    androidboot.usbcontroller=4e00000.dwc3 \
    cgroup.memory=nokmem,nosocket \
    ip6table_raw.raw_before_defrag=1 \
    iptable_raw.raw_before_defrag=1 \
    loop.max_part=7 \
    lpm_levels.sleep_disabled=1 \
    msm_rtb.filter=0x237 \
    pcie_ports=compat \
    service_locator.enable=1 \
    swiotlb=0
BOARD_KERNEL_CMDLINE +=		\
	androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_RAMDISK_USE_LZ4 := true
TARGET_KERNEL_NO_GCC := true
TARGET_KERNEL_SOURCE := kernel/lenovo/sm6375

TARGET_KERNEL_CONFIG := vendor/holi-qgki_defconfig vendor/holi_QGKI.config vendor/sdmsteppeauto_QGKI.config vendor/knto.config

# Vendor_dlkm
MODULES_PATH := $(COMMON_PATH)/prebuilt/kernels/$(KERNEL_VER)/modules
#BOARD_VENDOR_RAMDISK_KERNEL_MODULES :=
#BOARD_VENDOR_KERNEL_MODULES := \
	$(MODULES_PATH)/adsp_loader_dlkm.ko	\
	$(MODULES_PATH)/apr_dlkm.ko		\
	$(MODULES_PATH)/aw882xx_dlkm.ko		\
	$(MODULES_PATH)/bolero_cdc_dlkm.ko	\
	$(MODULES_PATH)/bt_fm_slim.ko		\
	$(MODULES_PATH)/btpower.ko		\
	$(MODULES_PATH)/camera.ko		\
	$(MODULES_PATH)/machine_dlkm.ko		\
	$(MODULES_PATH)/mbhc_dlkm.ko		\
	$(MODULES_PATH)/native_dlkm.ko		\
	$(MODULES_PATH)/pinctrl_lpi_dlkm.ko	\
	$(MODULES_PATH)/platform_dlkm.ko	\
	$(MODULES_PATH)/q6_dlkm.ko		\
	$(MODULES_PATH)/q6_notifier_dlkm.ko	\
	$(MODULES_PATH)/q6_pdr_dlkm.ko		\
	$(MODULES_PATH)/rdbg.ko			\
	$(MODULES_PATH)/rx_macro_dlkm.ko	\
	$(MODULES_PATH)/snd_event_dlkm.ko	\
	$(MODULES_PATH)/stub_dlkm.ko		\
	$(MODULES_PATH)/swr_ctrl_dlkm.ko	\
	$(MODULES_PATH)/swr_dlkm.ko		\
	$(MODULES_PATH)/tx_macro_dlkm.ko	\
	$(MODULES_PATH)/va_macro_dlkm.ko	\
	$(MODULES_PATH)/wcd937x_dlkm.ko		\
	$(MODULES_PATH)/wcd937x_slave_dlkm.ko	\
	$(MODULES_PATH)/wcd938x_dlkm.ko		\
	$(MODULES_PATH)/wcd938x_slave_dlkm.ko	\
	$(MODULES_PATH)/wcd9xxx_dlkm.ko		\
	$(MODULES_PATH)/wcd_core_dlkm.ko	\
	$(MODULES_PATH)/wsa881x_analog_dlkm.ko

#	$(MODULES_PATH)/modules.alias		\
#	$(MODULES_PATH)/modules.dep		\
#	$(MODULES_PATH)/modules.softdep		\

BOARD_VENDOR_KERNEL_MODULES := \
	$(MODULES_PATH)/adsp_loader_dlkm.ko	\
	$(MODULES_PATH)/apr_dlkm.ko		\
	$(MODULES_PATH)/aw882xx_dlkm.ko		\
	$(MODULES_PATH)/bolero_cdc_dlkm.ko	\
	$(MODULES_PATH)/bt_fm_slim.ko		\
	$(MODULES_PATH)/camera.ko		\
	$(MODULES_PATH)/machine_dlkm.ko		\
	$(MODULES_PATH)/mbhc_dlkm.ko		\
	$(MODULES_PATH)/native_dlkm.ko		\
	$(MODULES_PATH)/pinctrl_lpi_dlkm.ko	\
	$(MODULES_PATH)/platform_dlkm.ko	\
	$(MODULES_PATH)/q6_dlkm.ko		\
	$(MODULES_PATH)/q6_notifier_dlkm.ko	\
	$(MODULES_PATH)/q6_pdr_dlkm.ko		\
	$(MODULES_PATH)/rdbg.ko			\
	$(MODULES_PATH)/rx_macro_dlkm.ko	\
	$(MODULES_PATH)/snd_event_dlkm.ko	\
	$(MODULES_PATH)/soundwire-bus.ko	\
	$(MODULES_PATH)/stub_dlkm.ko		\
	$(MODULES_PATH)/swr_ctrl_dlkm.ko	\
	$(MODULES_PATH)/swr_dlkm.ko		\
	$(MODULES_PATH)/tx_macro_dlkm.ko	\
	$(MODULES_PATH)/va_macro_dlkm.ko	\
	$(MODULES_PATH)/wcd937x_dlkm.ko		\
	$(MODULES_PATH)/wcd937x_slave_dlkm.ko	\
	$(MODULES_PATH)/wcd938x_dlkm.ko		\
	$(MODULES_PATH)/wcd938x_slave_dlkm.ko	\
	$(MODULES_PATH)/wcd9xxx_dlkm.ko		\
	$(MODULES_PATH)/wcd_core_dlkm.ko	\
	$(MODULES_PATH)/wlan.ko		\
	$(MODULES_PATH)/wsa881x_analog_dlkm.ko

#BOARD_VENDOR_KERNEL_MODULES += \
	$(MODULES_PATH)/rmnet.ko

#BOARD_VENDOR_RAMDISK_KERNEL_MODULES :=	\
	$(MODULES_PATH)/adsp_loader_dlkm.ko	\
	$(MODULES_PATH)/apr_dlkm.ko		\
	$(MODULES_PATH)/aw882xx_dlkm.ko		\
	$(MODULES_PATH)/bolero_cdc_dlkm.ko	\
	$(MODULES_PATH)/bt_fm_slim.ko		\
	$(MODULES_PATH)/btpower.ko		\
	$(MODULES_PATH)/camera.ko		\
	$(MODULES_PATH)/machine_dlkm.ko		\
	$(MODULES_PATH)/mbhc_dlkm.ko		\
	$(MODULES_PATH)/native_dlkm.ko		\
	$(MODULES_PATH)/pinctrl_lpi_dlkm.ko	\
	$(MODULES_PATH)/platform_dlkm.ko	\
	$(MODULES_PATH)/q6_dlkm.ko		\
	$(MODULES_PATH)/q6_notifier_dlkm.ko	\
	$(MODULES_PATH)/q6_pdr_dlkm.ko		\
	$(MODULES_PATH)/qca_cld3_wlan.ko	\
	$(MODULES_PATH)/rdbg.ko			\
	$(MODULES_PATH)/rmnet_core.ko		\
	$(MODULES_PATH)/rmnet_ctl.ko		\
	$(MODULES_PATH)/rmnet_offload.ko	\
	$(MODULES_PATH)/rmnet_shs.ko		\
	$(MODULES_PATH)/rx_macro_dlkm.ko	\
	$(MODULES_PATH)/snd_event_dlkm.ko	\
	$(MODULES_PATH)/stub_dlkm.ko		\
	$(MODULES_PATH)/swr_ctrl_dlkm.ko	\
	$(MODULES_PATH)/swr_dlkm.ko		\
	$(MODULES_PATH)/tx_macro_dlkm.ko	\
	$(MODULES_PATH)/va_macro_dlkm.ko	\
	$(MODULES_PATH)/wcd937x_dlkm.ko		\
	$(MODULES_PATH)/wcd937x_slave_dlkm.ko	\
	$(MODULES_PATH)/wcd938x_dlkm.ko		\
	$(MODULES_PATH)/wcd938x_slave_dlkm.ko	\
	$(MODULES_PATH)/wcd9xxx_dlkm.ko		\
	$(MODULES_PATH)/wcd_core_dlkm.ko	\
	$(MODULES_PATH)/wsa881x_analog_dlkm.ko

#BOARD_VENDOR_RAMDISK_KERNEL_MODULES :=\
	$(MODULES_PATH)/5.4-gki/_qcom_scm.ko		\
	$(MODULES_PATH)/5.4-gki/adsp_loader_dlkm.ko	\
	$(MODULES_PATH)/5.4-gki/apr_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/aw882xx_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/bolero_cdc_dlkm.ko	\
	$(MODULES_PATH)/5.4-gki/bt_fm_slim.ko		\
	$(MODULES_PATH)/5.4-gki/btpower.ko		\
	$(MODULES_PATH)/5.4-gki/camera.ko		\
	$(MODULES_PATH)/5.4-gki/cdsp-loader.ko		\
	$(MODULES_PATH)/5.4-gki/cdsprm.ko		\
	$(MODULES_PATH)/5.4-gki/clk-aop-qmp.ko		\
	$(MODULES_PATH)/5.4-gki/clk-dummy.ko		\
	$(MODULES_PATH)/5.4-gki/clk-qcom.ko		\
	$(MODULES_PATH)/5.4-gki/clk-rpmh.ko		\
	$(MODULES_PATH)/5.4-gki/clk-smd-rpm.ko		\
	$(MODULES_PATH)/5.4-gki/clk-spmi-pmic-div.ko	\
	$(MODULES_PATH)/5.4-gki/cmd-db.ko		\
	$(MODULES_PATH)/5.4-gki/cnss_nl.ko		\
	$(MODULES_PATH)/5.4-gki/cnss_prealloc.ko	\
	$(MODULES_PATH)/5.4-gki/cnss_utils.ko		\
	$(MODULES_PATH)/5.4-gki/core_hang_detect.ko	\
	$(MODULES_PATH)/5.4-gki/cpucp-l3.ko		\
	$(MODULES_PATH)/5.4-gki/cqhci-crypto-qti.ko	\
	$(MODULES_PATH)/5.4-gki/cqhci-crypto.ko		\
	$(MODULES_PATH)/5.4-gki/cqhci.ko		\
	$(MODULES_PATH)/5.4-gki/crypto-qti-common.ko	\
	$(MODULES_PATH)/5.4-gki/crypto-qti-hwkm.ko	\
	$(MODULES_PATH)/5.4-gki/cx_ipeak.ko		\
	$(MODULES_PATH)/5.4-gki/device_management_service_v01.ko	\
	$(MODULES_PATH)/5.4-gki/dispcc-blair.ko		\
	$(MODULES_PATH)/5.4-gki/dispcc-holi.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3-haps.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3-msm.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3-of-simple.ko	\
	$(MODULES_PATH)/5.4-gki/dwc3-qcom.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3.ko			\
	$(MODULES_PATH)/5.4-gki/ehset.ko		\
	$(MODULES_PATH)/5.4-gki/eud.ko			\
	$(MODULES_PATH)/5.4-gki/exfat.ko		\
	$(MODULES_PATH)/5.4-gki/focaltech_fts.ko		\
	$(MODULES_PATH)/5.4-gki/frpc-adsprpc.ko			\
	$(MODULES_PATH)/5.4-gki/gcc-blair.ko			\
	$(MODULES_PATH)/5.4-gki/gcc-holi.ko			\
	$(MODULES_PATH)/5.4-gki/glink_pkt.ko			\
	$(MODULES_PATH)/5.4-gki/glink_probe.ko			\
	$(MODULES_PATH)/5.4-gki/governor_gpubw_mon.ko		\
	$(MODULES_PATH)/5.4-gki/governor_msm_adreno_tz.ko	\
	$(MODULES_PATH)/5.4-gki/gpi.ko				\
	$(MODULES_PATH)/5.4-gki/gpucc-blair.ko			\
	$(MODULES_PATH)/5.4-gki/gpucc-holi.ko			\
	$(MODULES_PATH)/5.4-gki/gsim.ko				\
	$(MODULES_PATH)/5.4-gki/himax_mmi.ko			\
	$(MODULES_PATH)/5.4-gki/hwkm.ko				\
	$(MODULES_PATH)/5.4-gki/i2c-msm-geni.ko			\
	$(MODULES_PATH)/5.4-gki/icc-rpm.ko			\
	$(MODULES_PATH)/5.4-gki/icnss2.ko			\
	$(MODULES_PATH)/5.4-gki/incrementalfs.ko		\
	$(MODULES_PATH)/5.4-gki/iommu-logger.ko			\
	$(MODULES_PATH)/5.4-gki/ipa_clientsm.ko			\
	$(MODULES_PATH)/5.4-gki/ipa_fmwk.ko			\
	$(MODULES_PATH)/5.4-gki/ipam.ko				\
	$(MODULES_PATH)/5.4-gki/leds-aw2015.ko			\
	$(MODULES_PATH)/5.4-gki/leds-aw2016.ko			\
	$(MODULES_PATH)/5.4-gki/leds-qpnp-flash-v2.ko		\
	$(MODULES_PATH)/5.4-gki/leds-qpnp-vibrator-ldo.ko	\
	$(MODULES_PATH)/5.4-gki/leds-qti-tri-led.ko		\
	$(MODULES_PATH)/5.4-gki/lvstest.ko			\
	$(MODULES_PATH)/5.4-gki/m2m-deinterlace.ko		\
	$(MODULES_PATH)/5.4-gki/machine_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/mbhc_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/memory_dump_v2.ko		\
	$(MODULES_PATH)/5.4-gki/microdump_collector.ko		\
	$(MODULES_PATH)/5.4-gki/mm8013c06_battery.ko		\
	$(MODULES_PATH)/5.4-gki/mpm.ko				\
	$(MODULES_PATH)/5.4-gki/msm-cvp.ko			\
	$(MODULES_PATH)/5.4-gki/msm-geni-se.ko			\
	$(MODULES_PATH)/5.4-gki/msm-poweroff.ko			\
	$(MODULES_PATH)/5.4-gki/msm-vidc.ko			\
	$(MODULES_PATH)/5.4-gki/msm_dma_iommu_mapping.ko	\
	$(MODULES_PATH)/5.4-gki/msm_drm.ko			\
	$(MODULES_PATH)/5.4-gki/msm_geni_serial.ko		\
	$(MODULES_PATH)/5.4-gki/msm_glink_ssr.ko		\
	$(MODULES_PATH)/5.4-gki/msm_ion_heaps.ko		\
	$(MODULES_PATH)/5.4-gki/msm_kgsl.ko			\
	$(MODULES_PATH)/5.4-gki/msm_performance.ko		\
	$(MODULES_PATH)/5.4-gki/msm_qmp.ko			\
	$(MODULES_PATH)/5.4-gki/msm_rng.ko			\
	$(MODULES_PATH)/5.4-gki/msm_sharedmem.ko		\
	$(MODULES_PATH)/5.4-gki/native_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/nfc_i2c.ko			\
	$(MODULES_PATH)/5.4-gki/ns.ko				\
	$(MODULES_PATH)/5.4-gki/ntfs.ko				\
	$(MODULES_PATH)/5.4-gki/nvmem_qfprom.ko			\
	$(MODULES_PATH)/5.4-gki/nvt_36523n.ko			\
	$(MODULES_PATH)/5.4-gki/peripheral-loader.ko		\
	$(MODULES_PATH)/5.4-gki/phy-generic.ko			\
	$(MODULES_PATH)/5.4-gki/phy-msm-qusb-v2.ko		\
	$(MODULES_PATH)/5.4-gki/phy-msm-qusb.ko			\
	$(MODULES_PATH)/5.4-gki/phy-msm-snps-hs.ko		\
	$(MODULES_PATH)/5.4-gki/phy-msm-ssusb-qmp.ko		\
	$(MODULES_PATH)/5.4-gki/phy-qcom-emu.ko			\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-14nm.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v3-660.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v3.ko		\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v4-lahaina.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v4-yupik.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v4.ko		\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qrbtc-sdm845.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs.ko			\
	$(MODULES_PATH)/5.4-gki/pinctrl-blair.ko		\
	$(MODULES_PATH)/5.4-gki/pinctrl-holi.ko			\
	$(MODULES_PATH)/5.4-gki/pinctrl-msm.ko			\
	$(MODULES_PATH)/5.4-gki/pinctrl-spmi-gpio.ko		\
	$(MODULES_PATH)/5.4-gki/pinctrl-spmi-mpp.ko		\
	$(MODULES_PATH)/5.4-gki/pinctrl_lpi_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/platform_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/policy_engine.ko		\
	$(MODULES_PATH)/5.4-gki/proxy-consumer.ko		\
	$(MODULES_PATH)/5.4-gki/pwm-qti-lpg.ko			\
	$(MODULES_PATH)/5.4-gki/q6_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/q6_notifier_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/q6_pdr_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/qca_cld3_wlan.ko		\
	$(MODULES_PATH)/5.4-gki/qce50.ko			\
	$(MODULES_PATH)/5.4-gki/qcedev-mod.ko			\
	$(MODULES_PATH)/5.4-gki/qcom-arm-smmu-mod.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-cpufreq-hw.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-i2c-pmic.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-qpnp-qg.ko			\
	$(MODULES_PATH)/5.4-gki/qcom-smb1355-charger.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-smb1398-charger.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-adc5.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-pmic.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-sdam.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-temp-alarm.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-wled.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-vadc-common.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_native.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_rpm.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_smem.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_spss.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_hwspinlock.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_ipcc.ko			\
	$(MODULES_PATH)/5.4-gki/qcom_pm8008-regulator.ko	\
	$(MODULES_PATH)/5.4-gki/qcom_proxy_of_consumer.ko	\
	$(MODULES_PATH)/5.4-gki/qcom_rpmh.ko			\
	$(MODULES_PATH)/5.4-gki/qcom_soc_wdt.ko			\
	$(MODULES_PATH)/5.4-gki/qcom_wdt_core.ko		\
	$(MODULES_PATH)/5.4-gki/qfprom-sys.ko			\
	$(MODULES_PATH)/5.4-gki/qmi_helpers.ko			\
	$(MODULES_PATH)/5.4-gki/qnoc-holi.ko			\
	$(MODULES_PATH)/5.4-gki/qnoc-qos.ko			\
	$(MODULES_PATH)/5.4-gki/qpnp-amoled-regulator.ko	\
	$(MODULES_PATH)/5.4-gki/qpnp-lcdb-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/qpnp-pdphy.ko			\
	$(MODULES_PATH)/5.4-gki/qpnp-power-on.ko		\
	$(MODULES_PATH)/5.4-gki/qpnp-smb5-main.ko		\
	$(MODULES_PATH)/5.4-gki/qrtr-smd.ko			\
	$(MODULES_PATH)/5.4-gki/qrtr.ko				\
	$(MODULES_PATH)/5.4-gki/qsee_ipc_irq.ko			\
	$(MODULES_PATH)/5.4-gki/qsee_ipc_irq_bridge.ko		\
	$(MODULES_PATH)/5.4-gki/qseecom-mod.ko			\
	$(MODULES_PATH)/5.4-gki/qti-fixed-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/rdbg.ko				\
	$(MODULES_PATH)/5.4-gki/refgen.ko			\
	$(MODULES_PATH)/5.4-gki/regmap-spmi.ko			\
	$(MODULES_PATH)/5.4-gki/rmnet_core.ko			\
	$(MODULES_PATH)/5.4-gki/rmnet_ctl.ko			\
	$(MODULES_PATH)/5.4-gki/rmnet_offload.ko		\
	$(MODULES_PATH)/5.4-gki/rmnet_shs.ko			\
	$(MODULES_PATH)/5.4-gki/rndisipam.ko			\
	$(MODULES_PATH)/5.4-gki/rpm-smd-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/rpm-smd.ko			\
	$(MODULES_PATH)/5.4-gki/rpmhpd.ko			\
	$(MODULES_PATH)/5.4-gki/rtc-pm8xxx.ko			\
	$(MODULES_PATH)/5.4-gki/rx_macro_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/sarkey.ko			\
	$(MODULES_PATH)/5.4-gki/sdhci-msm.ko			\
	$(MODULES_PATH)/5.4-gki/secure_buffer.ko		\
	$(MODULES_PATH)/5.4-gki/sensors_ssc.ko			\
	$(MODULES_PATH)/5.4-gki/service-locator.ko		\
	$(MODULES_PATH)/5.4-gki/service-notifier.ko		\
	$(MODULES_PATH)/5.4-gki/sg.ko				\
	$(MODULES_PATH)/5.4-gki/sgm37604ayg.ko			\
	$(MODULES_PATH)/5.4-gki/slimbus-ngd.ko			\
	$(MODULES_PATH)/5.4-gki/slimbus.ko			\
	$(MODULES_PATH)/5.4-gki/sm5109.ko			\
	$(MODULES_PATH)/5.4-gki/smcinvoke.ko			\
	$(MODULES_PATH)/5.4-gki/smem.ko				\
	$(MODULES_PATH)/5.4-gki/smp2p.ko			\
	$(MODULES_PATH)/5.4-gki/smp2p_sleepstate.ko		\
	$(MODULES_PATH)/5.4-gki/smsm.ko				\
	$(MODULES_PATH)/5.4-gki/snd-usb-audio-qmi.ko		\
	$(MODULES_PATH)/5.4-gki/snd_event_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/socinfo.ko			\
	$(MODULES_PATH)/5.4-gki/spcom.ko			\
	$(MODULES_PATH)/5.4-gki/spi-msm-geni.ko			\
	$(MODULES_PATH)/5.4-gki/spmi-pmic-arb-debug.ko		\
	$(MODULES_PATH)/5.4-gki/spmi-pmic-arb.ko		\
	$(MODULES_PATH)/5.4-gki/sps_drv.ko			\
	$(MODULES_PATH)/5.4-gki/spss_utils.ko			\
	$(MODULES_PATH)/5.4-gki/stub-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/stub_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/subsys-pil-tz.ko		\
	$(MODULES_PATH)/5.4-gki/subsystem_restart.ko		\
	$(MODULES_PATH)/5.4-gki/subsystem_sleep_stats.ko	\
	$(MODULES_PATH)/5.4-gki/swr_ctrl_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/swr_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/synx-driver.ko			\
	$(MODULES_PATH)/5.4-gki/tx_macro_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/typec_ucsi.ko			\
	$(MODULES_PATH)/5.4-gki/ufs-qcom.ko			\
	$(MODULES_PATH)/5.4-gki/ufshcd-crypto-qti.ko		\
	$(MODULES_PATH)/5.4-gki/usb_f_ccid.ko			\
	$(MODULES_PATH)/5.4-gki/usb_f_cdev.ko			\
	$(MODULES_PATH)/5.4-gki/usb_f_diag.ko			\
	$(MODULES_PATH)/5.4-gki/usb_f_gsi.ko			\
	$(MODULES_PATH)/5.4-gki/usbtouchscreen.ko		\
	$(MODULES_PATH)/5.4-gki/v4l2-mem2mem.ko			\
	$(MODULES_PATH)/5.4-gki/va_macro_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wcd937x_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/wcd937x_slave_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wcd938x_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/wcd938x_slave_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wcd9xxx_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/wcd_core_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wlan_firmware_service_v01.ko	\
	$(MODULES_PATH)/5.4-gki/wsa881x_analog_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/xhci-hcd.ko			\
	$(MODULES_PATH)/5.4-gki/xhci-pci.ko			\
	$(MODULES_PATH)/5.4-gki/xhci-plat-hcd.ko


#BOARD_VENDOR_KERNEL_MODULES :=\
	$(MODULES_PATH)/5.4-gki/_qcom_scm.ko		\
	$(MODULES_PATH)/5.4-gki/adsp_loader_dlkm.ko	\
	$(MODULES_PATH)/5.4-gki/apr_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/aw882xx_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/bolero_cdc_dlkm.ko	\
	$(MODULES_PATH)/5.4-gki/bt_fm_slim.ko		\
	$(MODULES_PATH)/5.4-gki/btpower.ko		\
	$(MODULES_PATH)/5.4-gki/camera.ko		\
	$(MODULES_PATH)/5.4-gki/cdsp-loader.ko		\
	$(MODULES_PATH)/5.4-gki/cdsprm.ko		\
	$(MODULES_PATH)/5.4-gki/clk-aop-qmp.ko		\
	$(MODULES_PATH)/5.4-gki/clk-dummy.ko		\
	$(MODULES_PATH)/5.4-gki/clk-qcom.ko		\
	$(MODULES_PATH)/5.4-gki/clk-rpmh.ko		\
	$(MODULES_PATH)/5.4-gki/clk-smd-rpm.ko		\
	$(MODULES_PATH)/5.4-gki/clk-spmi-pmic-div.ko	\
	$(MODULES_PATH)/5.4-gki/cmd-db.ko		\
	$(MODULES_PATH)/5.4-gki/cnss_nl.ko		\
	$(MODULES_PATH)/5.4-gki/cnss_prealloc.ko	\
	$(MODULES_PATH)/5.4-gki/cnss_utils.ko		\
	$(MODULES_PATH)/5.4-gki/core_hang_detect.ko	\
	$(MODULES_PATH)/5.4-gki/cpucp-l3.ko		\
	$(MODULES_PATH)/5.4-gki/cqhci-crypto-qti.ko	\
	$(MODULES_PATH)/5.4-gki/cqhci-crypto.ko		\
	$(MODULES_PATH)/5.4-gki/cqhci.ko		\
	$(MODULES_PATH)/5.4-gki/crypto-qti-common.ko	\
	$(MODULES_PATH)/5.4-gki/crypto-qti-hwkm.ko	\
	$(MODULES_PATH)/5.4-gki/cx_ipeak.ko		\
	$(MODULES_PATH)/5.4-gki/device_management_service_v01.ko	\
	$(MODULES_PATH)/5.4-gki/dispcc-blair.ko		\
	$(MODULES_PATH)/5.4-gki/dispcc-holi.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3-haps.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3-msm.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3-of-simple.ko	\
	$(MODULES_PATH)/5.4-gki/dwc3-qcom.ko		\
	$(MODULES_PATH)/5.4-gki/dwc3.ko			\
	$(MODULES_PATH)/5.4-gki/ehset.ko		\
	$(MODULES_PATH)/5.4-gki/eud.ko			\
	$(MODULES_PATH)/5.4-gki/exfat.ko		\
	$(MODULES_PATH)/5.4-gki/focaltech_fts.ko		\
	$(MODULES_PATH)/5.4-gki/frpc-adsprpc.ko			\
	$(MODULES_PATH)/5.4-gki/gcc-blair.ko			\
	$(MODULES_PATH)/5.4-gki/gcc-holi.ko			\
	$(MODULES_PATH)/5.4-gki/glink_pkt.ko			\
	$(MODULES_PATH)/5.4-gki/glink_probe.ko			\
	$(MODULES_PATH)/5.4-gki/governor_gpubw_mon.ko		\
	$(MODULES_PATH)/5.4-gki/governor_msm_adreno_tz.ko	\
	$(MODULES_PATH)/5.4-gki/gpi.ko				\
	$(MODULES_PATH)/5.4-gki/gpucc-blair.ko			\
	$(MODULES_PATH)/5.4-gki/gpucc-holi.ko			\
	$(MODULES_PATH)/5.4-gki/gsim.ko				\
	$(MODULES_PATH)/5.4-gki/himax_mmi.ko			\
	$(MODULES_PATH)/5.4-gki/hwkm.ko				\
	$(MODULES_PATH)/5.4-gki/i2c-msm-geni.ko			\
	$(MODULES_PATH)/5.4-gki/icc-rpm.ko			\
	$(MODULES_PATH)/5.4-gki/icnss2.ko			\
	$(MODULES_PATH)/5.4-gki/incrementalfs.ko		\
	$(MODULES_PATH)/5.4-gki/iommu-logger.ko			\
	$(MODULES_PATH)/5.4-gki/ipa_clientsm.ko			\
	$(MODULES_PATH)/5.4-gki/ipa_fmwk.ko			\
	$(MODULES_PATH)/5.4-gki/ipam.ko				\
	$(MODULES_PATH)/5.4-gki/leds-aw2015.ko			\
	$(MODULES_PATH)/5.4-gki/leds-aw2016.ko			\
	$(MODULES_PATH)/5.4-gki/leds-qpnp-flash-v2.ko		\
	$(MODULES_PATH)/5.4-gki/leds-qpnp-vibrator-ldo.ko	\
	$(MODULES_PATH)/5.4-gki/leds-qti-tri-led.ko		\
	$(MODULES_PATH)/5.4-gki/lvstest.ko			\
	$(MODULES_PATH)/5.4-gki/m2m-deinterlace.ko		\
	$(MODULES_PATH)/5.4-gki/machine_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/mbhc_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/memory_dump_v2.ko		\
	$(MODULES_PATH)/5.4-gki/microdump_collector.ko		\
	$(MODULES_PATH)/5.4-gki/mm8013c06_battery.ko		\
	$(MODULES_PATH)/5.4-gki/mpm.ko				\
	$(MODULES_PATH)/5.4-gki/msm-cvp.ko			\
	$(MODULES_PATH)/5.4-gki/msm-geni-se.ko			\
	$(MODULES_PATH)/5.4-gki/msm-poweroff.ko			\
	$(MODULES_PATH)/5.4-gki/msm-vidc.ko			\
	$(MODULES_PATH)/5.4-gki/msm_dma_iommu_mapping.ko	\
	$(MODULES_PATH)/5.4-gki/msm_drm.ko			\
	$(MODULES_PATH)/5.4-gki/msm_geni_serial.ko		\
	$(MODULES_PATH)/5.4-gki/msm_glink_ssr.ko		\
	$(MODULES_PATH)/5.4-gki/msm_ion_heaps.ko		\
	$(MODULES_PATH)/5.4-gki/msm_kgsl.ko			\
	$(MODULES_PATH)/5.4-gki/msm_performance.ko		\
	$(MODULES_PATH)/5.4-gki/msm_qmp.ko			\
	$(MODULES_PATH)/5.4-gki/msm_rng.ko			\
	$(MODULES_PATH)/5.4-gki/msm_sharedmem.ko		\
	$(MODULES_PATH)/5.4-gki/native_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/nfc_i2c.ko			\
	$(MODULES_PATH)/5.4-gki/ns.ko				\
	$(MODULES_PATH)/5.4-gki/ntfs.ko				\
	$(MODULES_PATH)/5.4-gki/nvmem_qfprom.ko			\
	$(MODULES_PATH)/5.4-gki/nvt_36523n.ko			\
	$(MODULES_PATH)/5.4-gki/peripheral-loader.ko		\
	$(MODULES_PATH)/5.4-gki/phy-generic.ko			\
	$(MODULES_PATH)/5.4-gki/phy-msm-qusb-v2.ko		\
	$(MODULES_PATH)/5.4-gki/phy-msm-qusb.ko			\
	$(MODULES_PATH)/5.4-gki/phy-msm-snps-hs.ko		\
	$(MODULES_PATH)/5.4-gki/phy-msm-ssusb-qmp.ko		\
	$(MODULES_PATH)/5.4-gki/phy-qcom-emu.ko			\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-14nm.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v3-660.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v3.ko		\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v4-lahaina.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v4-yupik.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qmp-v4.ko		\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs-qrbtc-sdm845.ko	\
	$(MODULES_PATH)/5.4-gki/phy-qcom-ufs.ko			\
	$(MODULES_PATH)/5.4-gki/pinctrl-blair.ko		\
	$(MODULES_PATH)/5.4-gki/pinctrl-holi.ko			\
	$(MODULES_PATH)/5.4-gki/pinctrl-msm.ko			\
	$(MODULES_PATH)/5.4-gki/pinctrl-spmi-gpio.ko		\
	$(MODULES_PATH)/5.4-gki/pinctrl-spmi-mpp.ko		\
	$(MODULES_PATH)/5.4-gki/pinctrl_lpi_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/platform_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/policy_engine.ko		\
	$(MODULES_PATH)/5.4-gki/proxy-consumer.ko		\
	$(MODULES_PATH)/5.4-gki/pwm-qti-lpg.ko			\
	$(MODULES_PATH)/5.4-gki/q6_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/q6_notifier_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/q6_pdr_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/qca_cld3_wlan.ko		\
	$(MODULES_PATH)/5.4-gki/qce50.ko			\
	$(MODULES_PATH)/5.4-gki/qcedev-mod.ko			\
	$(MODULES_PATH)/5.4-gki/qcom-arm-smmu-mod.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-cpufreq-hw.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-i2c-pmic.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-qpnp-qg.ko			\
	$(MODULES_PATH)/5.4-gki/qcom-smb1355-charger.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-smb1398-charger.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-adc5.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-pmic.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-sdam.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-temp-alarm.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-spmi-wled.ko		\
	$(MODULES_PATH)/5.4-gki/qcom-vadc-common.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_native.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_rpm.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_smem.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_glink_spss.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_hwspinlock.ko		\
	$(MODULES_PATH)/5.4-gki/qcom_ipcc.ko			\
	$(MODULES_PATH)/5.4-gki/qcom_pm8008-regulator.ko	\
	$(MODULES_PATH)/5.4-gki/qcom_proxy_of_consumer.ko	\
	$(MODULES_PATH)/5.4-gki/qcom_rpmh.ko			\
	$(MODULES_PATH)/5.4-gki/qcom_soc_wdt.ko			\
	$(MODULES_PATH)/5.4-gki/qcom_wdt_core.ko		\
	$(MODULES_PATH)/5.4-gki/qfprom-sys.ko			\
	$(MODULES_PATH)/5.4-gki/qmi_helpers.ko			\
	$(MODULES_PATH)/5.4-gki/qnoc-holi.ko			\
	$(MODULES_PATH)/5.4-gki/qnoc-qos.ko			\
	$(MODULES_PATH)/5.4-gki/qpnp-amoled-regulator.ko	\
	$(MODULES_PATH)/5.4-gki/qpnp-lcdb-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/qpnp-pdphy.ko			\
	$(MODULES_PATH)/5.4-gki/qpnp-power-on.ko		\
	$(MODULES_PATH)/5.4-gki/qpnp-smb5-main.ko		\
	$(MODULES_PATH)/5.4-gki/qrtr-smd.ko			\
	$(MODULES_PATH)/5.4-gki/qrtr.ko				\
	$(MODULES_PATH)/5.4-gki/qsee_ipc_irq.ko			\
	$(MODULES_PATH)/5.4-gki/qsee_ipc_irq_bridge.ko		\
	$(MODULES_PATH)/5.4-gki/qseecom-mod.ko			\
	$(MODULES_PATH)/5.4-gki/qti-fixed-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/rdbg.ko				\
	$(MODULES_PATH)/5.4-gki/refgen.ko			\
	$(MODULES_PATH)/5.4-gki/regmap-spmi.ko			\
	$(MODULES_PATH)/5.4-gki/rmnet_core.ko			\
	$(MODULES_PATH)/5.4-gki/rmnet_ctl.ko			\
	$(MODULES_PATH)/5.4-gki/rmnet_offload.ko		\
	$(MODULES_PATH)/5.4-gki/rmnet_shs.ko			\
	$(MODULES_PATH)/5.4-gki/rndisipam.ko			\
	$(MODULES_PATH)/5.4-gki/rpm-smd-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/rpm-smd.ko			\
	$(MODULES_PATH)/5.4-gki/rpmhpd.ko			\
	$(MODULES_PATH)/5.4-gki/rtc-pm8xxx.ko			\
	$(MODULES_PATH)/5.4-gki/rx_macro_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/sarkey.ko			\
	$(MODULES_PATH)/5.4-gki/sdhci-msm.ko			\
	$(MODULES_PATH)/5.4-gki/secure_buffer.ko		\
	$(MODULES_PATH)/5.4-gki/sensors_ssc.ko			\
	$(MODULES_PATH)/5.4-gki/service-locator.ko		\
	$(MODULES_PATH)/5.4-gki/service-notifier.ko		\
	$(MODULES_PATH)/5.4-gki/sg.ko				\
	$(MODULES_PATH)/5.4-gki/sgm37604ayg.ko			\
	$(MODULES_PATH)/5.4-gki/slimbus-ngd.ko			\
	$(MODULES_PATH)/5.4-gki/slimbus.ko			\
	$(MODULES_PATH)/5.4-gki/sm5109.ko			\
	$(MODULES_PATH)/5.4-gki/smcinvoke.ko			\
	$(MODULES_PATH)/5.4-gki/smem.ko				\
	$(MODULES_PATH)/5.4-gki/smp2p.ko			\
	$(MODULES_PATH)/5.4-gki/smp2p_sleepstate.ko		\
	$(MODULES_PATH)/5.4-gki/smsm.ko				\
	$(MODULES_PATH)/5.4-gki/snd-usb-audio-qmi.ko		\
	$(MODULES_PATH)/5.4-gki/snd_event_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/socinfo.ko			\
	$(MODULES_PATH)/5.4-gki/spcom.ko			\
	$(MODULES_PATH)/5.4-gki/spi-msm-geni.ko			\
	$(MODULES_PATH)/5.4-gki/spmi-pmic-arb-debug.ko		\
	$(MODULES_PATH)/5.4-gki/spmi-pmic-arb.ko		\
	$(MODULES_PATH)/5.4-gki/sps_drv.ko			\
	$(MODULES_PATH)/5.4-gki/spss_utils.ko			\
	$(MODULES_PATH)/5.4-gki/stub-regulator.ko		\
	$(MODULES_PATH)/5.4-gki/stub_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/subsys-pil-tz.ko		\
	$(MODULES_PATH)/5.4-gki/subsystem_restart.ko		\
	$(MODULES_PATH)/5.4-gki/subsystem_sleep_stats.ko	\
	$(MODULES_PATH)/5.4-gki/swr_ctrl_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/swr_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/synx-driver.ko			\
	$(MODULES_PATH)/5.4-gki/tx_macro_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/typec_ucsi.ko			\
	$(MODULES_PATH)/5.4-gki/ufs-qcom.ko			\
	$(MODULES_PATH)/5.4-gki/ufshcd-crypto-qti.ko		\
	$(MODULES_PATH)/5.4-gki/usb_f_ccid.ko			\
	$(MODULES_PATH)/5.4-gki/usb_f_cdev.ko			\
	$(MODULES_PATH)/5.4-gki/usb_f_diag.ko			\
	$(MODULES_PATH)/5.4-gki/usb_f_gsi.ko			\
	$(MODULES_PATH)/5.4-gki/usbtouchscreen.ko		\
	$(MODULES_PATH)/5.4-gki/v4l2-mem2mem.ko			\
	$(MODULES_PATH)/5.4-gki/va_macro_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wcd937x_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/wcd937x_slave_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wcd938x_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/wcd938x_slave_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wcd9xxx_dlkm.ko			\
	$(MODULES_PATH)/5.4-gki/wcd_core_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/wlan_firmware_service_v01.ko	\
	$(MODULES_PATH)/5.4-gki/wsa881x_analog_dlkm.ko		\
	$(MODULES_PATH)/5.4-gki/xhci-hcd.ko			\
	$(MODULES_PATH)/5.4-gki/xhci-pci.ko			\
	$(MODULES_PATH)/5.4-gki/xhci-plat-hcd.ko

#BOARD_VENDOR_KERNEL_MODULES_LOAD := $(COMMON_PATH)/prebuilt/kernels/$(KERNEL_VER)/modules.load
#BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(COMMON_PATH)/prebuilt/kernels/$(KERNEL_VER)/modules/5.4-gki/vendor_ramdisk/modules.load

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := holi

BOARD_ROOT_EXTRA_SYMLINKS := \
    /vendor/fsg:/fsg

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot	\
    vendor_dlkm

# Audio
#### TEMP use prebuilt audio.primary.holi
AUDIO_USE_STUB_HAL := true
#### TEMP use prebuilt audio.primary.holi

BOARD_SUPPORTS_OPENSOURCE_STHAL := false


AUDIO_FEATURE_ENABLED_AHAL_EXT := false
AUDIO_FEATURE_ENABLED_DLKM := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := false
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_GKI := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := false
AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true
#BOARD_SUPPORTS_OPENSOURCE_STHAL := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true

# Display
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default

# HIDL
#    hardware/motorola/vintf/device_framework_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix.xml \
    vendor/lineage/config/device_framework_matrix.xml
DEVICE_MATRIX_FILE := hardware/qcom-caf/common/compatibility_matrix.xml
DEVICE_MANIFEST_FILE += $(COMMON_PATH)/manifest.xml

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_USES_VENDOR_DLKMIMAGE := true
-include vendor/lineage/config/BoardConfigReservedSize.mk
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_BUILD_VENDOR_RAMDISK_IMAGE := true
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
#BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := erofs
#BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := erofs
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
#BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_MOT_DP_GROUP_PARTITION_LIST := product system system_ext vendor vendor_dlkm
BOARD_SUPER_PARTITION_GROUPS := mot_dp_group
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Properties
TARGET_ODM_PROP += $(COMMON_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(COMMON_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(COMMON_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_WIPE := $(COMMON_PATH)/recovery/recovery.wipe

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SELinux
include device/qcom/sepolicy_vndr/SEPolicy.mk
#include hardware/motorola/sepolicy/qti/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/vendor

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_VBMETA_SYSTEM := system system_ext product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_EVENT := "ON"
CONFIG_IEEE80211AX := true
#WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_DEFAULT := wlan
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
include vendor/lenovo/sm6375-common/BoardConfigVendor.mk

echo 'Starting to clone stuffs needed to build for Haydn'

# Device common
echo 'Cloning Common device tree'
git clone --depth=1 https://github.com/Tree-Junkyard/android_device_xiaomi_sm8350-common -b Elixir-13 device/xiaomi/sm8350-common

# Kernel
echo 'Cloning Kernel tree'
git clone https://github.com/Astridxx/android_kernel_xiaomi_sm8350.git --recursive --depth=1 -b Octavi-13 kernel/xiaomi/sm8350

# Vendor
echo 'Cloning Vendor tree'
git clone --depth=1 https://github.com/Astridxx/proprietary_vendor_xiaomi_haydn.git -b lineage-20 vendor/xiaomi/haydn

# Vendor common
echo 'Cloning Common vendor tree'
git clone --depth=1 https://github.com/Astridxx/proprietary_vendor_xiaomi_sm8350-common.git -b lineage-20 vendor/xiaomi/sm8350-common

# Xiaomi
echo 'Cloning Hardware xiaomi'
rm -rf hardware/xiaomi && git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-20 hardware/xiaomi

# Compat
echo 'Cloning Lineage compat'
rm -rf hardware/lineage/compat && git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git hardware/lineage/compat

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera.git -b thirteen-leica vendor/xiaomi/haydn-miuicamera

# Sepolicy
echo 'Cloning Sepolicy vndr-legacy-um'
rm -rf device/qcom/sepolicy_vndr-legacy-um && git clone --depth=1 https://github.com/Astridxx/android_device_qcom_sepolicy_vndr.git -b elixir-legacy-um device/qcom/sepolicy_vndr-legacy-um

# Firmware
echo 'Cloning Firmware'
git clone --depth=1 https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware.git -b thirteen vendor/xiaomi/haydn-firmware

# Ipa
echo 'Cloning Data-ipa-cfg-mgr-legacy-um'
rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr-legacy-um && git clone --depth=1 https://github.com/LineageOS/android_vendor_qcom_opensource_data-ipa-cfg-mgr.git -b lineage-20.0-legacy-um vendor/qcom/opensource/data-ipa-cfg-mgr-legacy-um

echo 'delete vendorsetup.sh from device tree once this is done'

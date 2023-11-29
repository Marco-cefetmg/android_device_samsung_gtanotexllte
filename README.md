# TWRP device tree for Samsung Tab A 10.1 With S-Pen (2016) (gtanotexlwifi)

## Kernel source available at 
https://github.com/unknowwiiplayer/kernel_samsung_exynos7870

# How to build
## Setup build environment

Create a workspace and open a terminal

    repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.1
    
Add to `.repo/local_manifests/roomservice.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project name="unknowwiiplayer/android_device_samsung_gtanotexlwifi" path="device/samsung/gtanotexlwifi" remote="github" revision="android-8.1"/>
	<project name="unknowwiiplayer/android_kernel_samsung_exynos7870" path="kernel/samsung/exynos7870" remote="github" revision="android-8.1" />
</manifest>
```
Sync

    repo sync
    
Define your TARGET_KERNEL_CROSS_COMPILE_PREFIX and KERNEL_TOOLCHAIN in device/samsung/gtanotexlwifi/BoardConfig.mk
   
## Build time
    
    cd <source-dir>; export ALLOW_MISSING_DEPENDENCIES=true; export ANDROID_MAJOR_VERSION=o; . build/envsetup.sh; lunch omni_<device>-eng; mka recoveryimage

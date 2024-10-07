#
# Copyright (C) 2008 - 2024 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# SOONG NAMESPACES
PRODUCT_SOONG_NAMESPACES += \
    vendor/motorola/Launcher3QuickStep

# Moto Signature App
$(call inherit-product, vendor/motorola/MotoSignatureApp/motosignatureapp.mk)

# Moto App Launcher
# Version: 14
PRODUCT_COPY_FILES += \
    vendor/motorola/Launcher3QuickStep/proprietary/system_ext/etc/permissions/com.motorola.launcher3_feature.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.launcher3_feature.xml \
    vendor/motorola/Launcher3QuickStep/proprietary/system_ext/etc/permissions/com.motorola.launcher3.swipe2stream.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.launcher3.swipe2stream.xml \
    vendor/motorola/Launcher3QuickStep/proprietary/system_ext/etc/permissions/com.motorola.launcher3.twoline.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.launcher3.twoline.xml \
    vendor/motorola/Launcher3QuickStep/proprietary/system_ext/etc/sysconfig/hiddenapi-whitelist-com.motorola.launcher3.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-whitelist-com.motorola.launcher3.xml

PRODUCT_PACKAGES += \
    libobjectbox-jni \
    libsqlite3ext \
    libsqlite3x \
    Launcher3QuickStep \
    Launcher3QuickStepOverlay

# Moto Leanback Launcher
# Version: 34.00.0.10.0
PRODUCT_COPY_FILES += \
    vendor/motorola/Launcher3QuickStep/proprietary/product/etc/permissions/com.motorola.leanbacklauncher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.motorola.leanbacklauncher.xml \
    vendor/motorola/Launcher3QuickStep/proprietary/product/etc/permissions/privapp-permissions-com.motorola.leanbacklauncher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-com.motorola.leanbacklauncher.xml \
    vendor/motorola/Launcher3QuickStep/proprietary/product/etc/sysconfig/hiddenapi-whitelist-com.motorola.leanbacklauncher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/hiddenapi-whitelist-com.motorola.leanbacklauncher.xml \
    vendor/motorola/Launcher3QuickStep/proprietary/product/etc/sysconfig/shortcut-com.motorola.leanbacklauncher.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/shortcut-com.motorola.leanbacklauncher.xml

PRODUCT_PACKAGES += \
    MotoLeanbackLauncher

# Launcher Config
# Version: 1.0.0
PRODUCT_PACKAGES += \
    LauncherConfig

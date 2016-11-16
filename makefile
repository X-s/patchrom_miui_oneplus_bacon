#
# Makefile for Oneplus One
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_bacon.zip

# the location for local-ota to save target-file
local-previous-target-dir :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars := org.cyanogenmod.platform

# All apks from MIUI
local-miui-removed-apps :=

local-miui-modified-apps :=

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

# The certificate for release version
local-certificate-dir := security

local-target-bit := 32

include phoneapps.mk

PORT_PRODUCT := bacon_xs

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
		#remove stockrom files
		rm -rf $(ZIP_DIR)/system/lib64
		rm -rf $(ZIP_DIR)/system/recovery-from-boot.bak
		#bye bye miui bin , use stockrom
		rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
		cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
		#edit build.prop
		echo "#XS ADD" >> $(ZIP_DIR)/system/build.prop
		echo "persist.sys.recovery_update=true" >> $(ZIP_DIR)/system/build.prop

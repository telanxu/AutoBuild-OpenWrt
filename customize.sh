#!/bin/bash
#=================================================
# Description: Modify Default IP
# Lisence: MIT
# Author: Jeremy.C
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.1.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Modify Host Name
sed -i '/uci commit system/i\uci set system.@system[0].hostname='WRT'' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Set no default passward
sed -i 's@.*CYX1uq4wUazHjmCDBCqXF*@#&@g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. Show your names in Version
sed -i ''s/OpenWrt /Jeremy.C build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" openwrt/package/lean/default-settings/files/zzz-default-settings


#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.3/g' package/base-files/files/bin/config_generate
sed -i 's/bootstrap/argon/g' feeds/luci/collections/luci/Makefile
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/gukey/smartdns.git package/openwrt-smartdns
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome  
#  //CONFIG_PACKAGE_luci-app-adguardhome=y
./scripts/feeds update -a
./scripts/feeds install -a

#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/MentoHUST-OpenWrt-ipk
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
git clone https://github.com/pymumu/luci-app-smartdns.git package/smartdns
git clone https://github.com/awesome-openwrt/luci-app-passwall.git package/passwall
git clone https://github.com/KFERMercer/luci-app-adguardhome.git package/adguardhome
git clone https://github.com/awesome-openwrt/luci-app-openclash.git package/openclash

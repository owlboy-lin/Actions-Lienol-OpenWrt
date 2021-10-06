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
sed -i 'd' feeds.conf.default


# Add a feed source
echo 'src-git packages https://github.com/Lienol/openwrt-packages.git;main' >>feeds.conf.default
echo 'src-git luci https://github.com/Lienol/openwrt-luci.git;main' >>feeds.conf.default
echo 'src-git routing https://git.openwrt.org/feed/routing.git' >>feeds.conf.default
echo 'src-git telephony https://git.openwrt.org/feed/telephony.git' >>feeds.conf.default
echo 'src-git lienol https://github.com/Lienol/openwrt-package.git;main' >>feeds.conf.default

echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

echo 'src-git UUGameAcc https://github.com/BCYDTZ/luci-app-UUGameAcc' >>feeds.conf.default

echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default


#git clone https://github.com/kenzok8/openwrt-packages.git packages/openwrt-packages

git clone https://github.com/kenzok8/small.git package/small

git clone https://github.com/BCYDTZ/luci-app-UUGameAcc.git package/UUGameAcc

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Import external feeds
# git clone https://github.com/Lienol/openwrt-package.git package/lienol

# git clone https://github.com/openwrt-develop/luci-theme-atmaterial package/luci-theme-atmaterial

# git clone https://github.com/rosywrt/luci-theme-rosy package/luci-theme-rosy

# luci-theme-argon
# cd openwrt/package/lean  
# rm -rf luci-theme-argon  
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  

# git clone https://github.com/rufengsuixing/luci-app-adguardhome package/adguardhome

# git clone https://github.com/vernesong/OpenClash package/openclash

# git clone https://github.com/frainzy1477/luci-app-clash package/clash

# git clone https://github.com/fw876/helloworld package/ssrplus

# git clone https://github.com/tzxiaozhen88/luci-app-koolproxyR package/koolproxyR

# git clone 其他github插件源码地址 package/文件夹名称


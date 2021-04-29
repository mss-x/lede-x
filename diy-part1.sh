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
# 说明：
# 除了第一行的#!/bin/bash不要动，其他的设置，前面带#表示不起作用，不带的表示起作用了
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#添加额外软件包
# Add luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package-temp/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package-temp/luci-app-vssr
git clone https://github.com/kenzok8/small.git package-temp/small
cp -r package-temp/small/* package/lean/
mv -f package-temp/lua-maxminddb package/lean/
mv -f package-temp/luci-app-vssr package/lean/
rm -rf package-temp
#解除网易云音乐播放限制
git clone https://github.com/immortalwrt/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
#adguardhome去广告
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
#微信推送
#git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan

#移除不用软件包
＃rm -rf package/lean/luci-app-adbyby-plus
＃rm -rf package/lean/luci-app-unblockmusic
＃rm -rf package/lean/wol
＃rm -rf package/lean/luci-app-xlnetacc
＃rm -rf package/lean/luci-app-vsftpd
＃rm -rf package/lean/luci-app-ipsec-vpnd
＃rm -rf package/lean/luci-app-flowoffload
＃rm -rf package/lean/luci-app-accesscontrol
＃rm -rf package/lean/luci-app-upnp
＃rm -rf package/lean/luci-app-samba

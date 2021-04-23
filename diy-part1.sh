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

#添加额外软件包
#openclash出国软件
#git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
#clash出国软件
#git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
#微信推送
#git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
#HelloWorld
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#京东签到
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/node-request.git package/node-request
#解除网易云音乐播放限制
git clone https://github.com/immortalwrt/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
#adguardhome去广告
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

#添加第三方argon-主题
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#全新的[argon-主题]登录界面,图片背景跟随Bing.com，每天自动切换
#增加可自定义登录背景功能，请自行将文件上传到/www/luci-static/argon/background 目录下，支持jpg png gif格式图片，主题将会优先显示自定义背景，多个背景为随机显示，系统默认依然为从bing获取
#增加了可以强制锁定暗色模式的功能，如果需要，请登录ssh 输入：touch /etc/dark 即可开启，关闭请输入：rm -rf /etc/dark，关闭后颜色模式为跟随系统

#移除不用软件包    
#rm -rf package/lean/luci-theme-argon  #删除源码自带的argon主题，因为上面一个链接是增加了其他作者制作的argon主题
#rm -rf feeds/packages/net/smartdns

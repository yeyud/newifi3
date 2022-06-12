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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#????xiaorouji??passwall?????
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#cat feeds.conf.default |grep passwall
#echo '====================Add lienol feed source OK!===================='

#????pymumu??smartdns?????
#git clone -b lede https://github.com/pymumu/luci-app-smartdns package/lean/luci-app-smartdns
#ls -la package/lean/ |grep luci-app-smartdns
#echo '====================Add smartdns OK!===================='

#????woniuzfb??iptvhelper??????
#sed -i '$a src-git iptvhelp https://github.com/riverscn/openwrt-iptvhelper' feeds.conf.default
#cat feeds.conf.default |grep iptv
#echo '====================Add IPtvhelp OK!===================='

#????rufengsuixing??AdGuardHome???
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome
#sed -i '1,$d' package/lean/luci-app-adguardhome/root/usr/share/AdGuardHome/links.txt
#echo 'https://static.adguard.com/adguardhome/release/AdGuardHome_linux_armv5.tar.gz'>>package/lean/luci-app-adguardhome/root/usr/share/AdGuardHome/links.txt
#cat package/lean/luci-app-adguardhome/root/usr/share/AdGuardHome/links.txt
#echo '====================Add AdGuardHome Plug OK!===================='

#????lwz322??K3??????
#git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
#ls -la package/lean/ |grep luci-app-k3screenctrl
#echo '====================Add k3screen Plug OK!===================='

#?ùIlwz322??K3???????
#rm -rf package/lean/k3screenctrl
#git clone https://github.com/lwz322/k3screenctrl_build.git package/lean/k3screenctrl/
#sed -i 's/@TARGET_bcm53xx_DEVICE_phicomm-k3 +@KERNEL_DEVMEM //g' package/lean/k3screenctrl/Makefile
#cat package/lean/k3screenctrl/Makefile |grep DEPENDS
#echo '====================Add k3screen Drive OK!===================='

#???bcm53xx?ß÷?????????
#sed -i '141,414d' target/linux/bcm53xx/image/Makefile
#sed -i '150,182d' target/linux/bcm53xx/image/Makefile
#sed -i 's/k3screenctrl/luci-app-k3screenctrl/g' target/linux/bcm53xx/image/Makefile
#cat target/linux/bcm53xx/image/Makefile |grep DEVICE_PACKAGES
#echo '====================Remove other devices of bcm53xx!===================='

#?ùIK3???????????ac86u
#wget -nv https://github.com/Hill-98/phicommk3-firmware/raw/master/brcmfmac4366c-pcie.bin.ac88u
#mv brcmfmac4366c-pcie.bin.ac88u package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
#chmod 0644 package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
#echo '====================Replace k3wireless firmware OK!===================='

#?ùIK3???????????asus-dhd24
#wget -nv https://github.com/Hill-98/phicommk3-firmware/raw/master/brcmfmac4366c-pcie.bin.asus-dhd24
#mv brcmfmac4366c-pcie.bin.asus-dhd24 package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
#chmod 0644 package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
#echo '====================Replace k3wireless firmware OK!===================='

#?ùIK3???????????69027
#wget -nv https://github.com/Hill-98/phicommk3-firmware/raw/master/brcmfmac4366c-pcie.bin.69027
#mv brcmfmac4366c-pcie.bin.69027 package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
#chmod 0644 package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
#echo '====================Replace k3wireless firmware OK!===================='

echo '?????'
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git cups https://github.com/TheMMcOfficial/lede-cups.git' feeds.conf.default
cat feeds.conf.default
echo '=========Add feed source OK!========='


echo '????jerrykuku??argon-mod????'
rm -rf package/lean/luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
echo '=========Add argon-mod OK!========='


#echo '????Lienol?????filebrowser'
#mkdir test1
#git clone https://github.com/Lienol/openwrt-package.git test1
#mv -f test1/luci-app-filebrowser package/lean
#rm -rf test1  
#echo '=========filebrowser OK!========='
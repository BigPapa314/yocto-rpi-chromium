# yocto-rpi-chromium
Demo project of using chromium with core-image-weston on an raspberry pi

## Setup project
```bash
git clone https://github.com/BigPapa314/yocto-rpi-chromium.git --recurse-submodules --jobs 8
cd yocto-rpi-chromium
```

## Create sd card for raspberry pi 4
```bash
source ./sources/poky/oe-init-build-env build-rpi4
bitbake core-image-weston
IMAGE_NAME=build-rpi4/deploy/images/raspberrypi4-64/core-image-weston-raspberrypi4-64.rootfs.wic
sudo bmaptool copy --bmap $IMAGE_NAME.bmap $IMAGE_NAME.bz2 /dev/<SD_CARD>
```

## Create sd card for raspberry pi 5
```bash
source ./sources/poky/oe-init-build-env build-rpi5
bitbake core-image-weston
IMAGE_NAME=build-rpi5/deploy/images/raspberrypi5/core-image-weston-raspberrypi5.rootfs.wic
sudo bmaptool copy --bmap $IMAGE_NAME.bmap $IMAGE_NAME.bz2 /dev/<SD_CARD>
```


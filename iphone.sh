#!/bin/bash

apt update

apt -y install \
git \
autoconf \
automake \
libtool-bin \
libudev-dev \
pkg-config \
libcurl4-openssl-dev \
libssl-dev \
libzip-dev

if [ ! -d '/root/tmp' ]; then
    mkdir -p '/root/tmp' || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/lib/libusb-1.0.so' ]; then
    if [ ! -d '/root/tmp/libusb_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libusb/libusb.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/libusb' || { echo "error${LINENO}"; exit 1; }
        git checkout 'a61afe5f75d969c4561a1d0ad753aa23cee6329a' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/libusb' '/root/tmp/libusb_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/libusb_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/lib/libplist-2.0.so' ]; then
    if [ ! -d '/root/tmp/libplist_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libimobiledevice/libplist.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/libplist' || { echo "error${LINENO}"; exit 1; }
        git checkout '228a3050695d222dc77e2cab9993396e045dcdfb' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/libplist' '/root/tmp/libplist_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/libplist_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/lib/libimobiledevice-glue-1.0.so' ]; then
    if [ ! -d '/root/tmp/libimobiledevice-glue_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libimobiledevice/libimobiledevice-glue.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/libimobiledevice-glue' || { echo "error${LINENO}"; exit 1; }
        git checkout 'c915351cb322d041afabc04f780eb35142cdaea5' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/libimobiledevice-glue' '/root/tmp/libimobiledevice-glue_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/libimobiledevice-glue_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/lib/libtatsu.so' ]; then
    if [ ! -d '/root/tmp/libtatsu_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libimobiledevice/libtatsu.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/libtatsu' || { echo "error${LINENO}"; exit 1; }
        git checkout '7e1647b9883ff1daa6363de20af2c4129ed45dcd' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/libtatsu' '/root/tmp/libtatsu_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/libtatsu_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/lib/libusbmuxd-2.0.so' ]; then
    if [ ! -d '/root/tmp/libusbmuxd_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libimobiledevice/libusbmuxd.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/libusbmuxd' || { echo "error${LINENO}"; exit 1; }
        git checkout '19d6bec393c9f9b31ccb090059f59268da32e281' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/libusbmuxd' '/root/tmp/libusbmuxd_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/libusbmuxd_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/lib/libimobiledevice-1.0.so' ]; then
    if [ ! -d '/root/tmp/libimobiledevice_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libimobiledevice/libimobiledevice.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/libimobiledevice' || { echo "error${LINENO}"; exit 1; }
        git checkout 'a6b6c35d1550acbd2552d49c2fe38115deec8fc0' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/libimobiledevice' '/root/tmp/libimobiledevice_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/libimobiledevice_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/sbin/usbmuxd' ]; then
    if [ ! -d '/root/tmp/usbmuxd_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/usbmuxd/usbmuxd.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/usbmuxd' || { echo "error${LINENO}"; exit 1; }
        git checkout '523f7004dce885fe38b4f80e34a8f76dc8ea98b5' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/usbmuxd' '/root/tmp/usbmuxd_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/usbmuxd_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/lib/libirecovery-1.0.so' ]; then
    if [ ! -d '/root/tmp/libirecovery_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libimobiledevice/libirecovery.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/libirecovery' || { echo "error${LINENO}"; exit 1; }
        git checkout '638056a593b3254d05f2960fab836bace10ff105' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/libirecovery' '/root/tmp/libirecovery_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/libirecovery_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

if [ ! -f '/usr/local/bin/idevicerestore' ]; then
    if [ ! -d '/root/tmp/idevicerestore_src' ]; then
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        git clone 'https://github.com/libimobiledevice/idevicerestore.git' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp/idevicerestore' || { echo "error${LINENO}"; exit 1; }
        git checkout 'a5905b7f905fc3cc83033ebd963f0dcba071e512' || { echo "error${LINENO}"; exit 1; }
        cd '/root/tmp' || { echo "error${LINENO}"; exit 1; }
        mv '/root/tmp/idevicerestore' '/root/tmp/idevicerestore_src' || { echo "error${LINENO}"; exit 1; }
    fi
    cd '/root/tmp/idevicerestore_src' || { echo "error${LINENO}"; exit 1; }
    ./autogen.sh || { echo "error${LINENO}"; exit 1; }
    make || { echo "error${LINENO}"; exit 1; }
    make install || { echo "error${LINENO}"; exit 1; }
fi

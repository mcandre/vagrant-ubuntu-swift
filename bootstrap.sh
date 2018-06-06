#!/bin/sh
sudo apt-get update &&
    sudo apt-get install -y clang libicu-dev libcurl3 wget ca-certificates &&
    wget https://swift.org/builds/swift-4.1.2-release/ubuntu1604/swift-4.1.2-RELEASE/swift-4.1.2-RELEASE-ubuntu16.04.tar.gz &&
    sudo apt-get remove -y wget ca-certificates &&
    sudo apt-get autoclean -y &&
    sudo apt-get clean -y &&
    sudo rm -rf /var/lib/apt/lists/* \
        /var/cache/apt/pkgcache.bin \
        /var/cache/apt/srcpkgcache.bin &&
    sudo tar xzvf swift-4.1.2-RELEASE-ubuntu16.04.tar.gz -C / --strip-components 1 &&
    sudo rm -rf /usr/lib/python2.7/site-packages # Workaround breaking path created by Swift tarball

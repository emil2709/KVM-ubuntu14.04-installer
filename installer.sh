#!/bin/bash

virt-install \
--name template \
--ram 2048 \
--disk path=/var/lib/libvirt/images/template.img,size=30 \
--vcpus 2 \
--os-type linux \
--os-variant ubuntu14.04 \
--graphics none \
--console pty,target_type=serial \
--location 'http://jp.archive.ubuntu.com/ubuntu/dists/trusty/main/installer-amd64/' \
--extra-args 'console=ttyS0,115200n8 serial'

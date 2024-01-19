#!/bin/bash

# Settings for boot

# 1. In grub, use `e` to edit Try or Install Ubuntu
# 2. Add console parameter to kernel like 
#   linux        /casper/vmlinuz console=ttyS0,115200n8  ---

URL_DISTR="https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso"

DISK_NAME="ubuntu.x86_64.qcow2"
DISK_SIZE="30G"

# Download Ubuntu
if [ ! -f $(basename $URL_DISTR) ]; then
	wget $URL_DISTR
fi

# Create qemu disc
if [ ! -f "$DISK_NAME" ]; then
  qemu-img create -f qcow2 "$DISK_NAME" "$DISK_SIZE"
fi

# Run qemu
qemu-system-x86_64 -enable-kvm \
  -machine pc \
  -cpu host -smp cores=16 \
  -m 8192 \
  -cdrom $(basename $URL_DISTR) \
  -drive format=qcow2,file=$DISK_NAME \
  -nographic

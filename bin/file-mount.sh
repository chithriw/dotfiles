#!/usr/bin/env bash
file_device='/dev/nvme1n1p3'
file_mount_point='/run/media/chithriw/File'
if [[ ! -d "${file_mount_point}" ]]; then
    sudo mkdir -p "${file_mount_point}"
fi

sudo mount -t ntfs-3g "${file_device}" "${file_mount_point}"

if [[ $? == 0 ]];then
    echo "success mount"
fi

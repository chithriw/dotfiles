#! /usr/bin/env bash

# Device and label (adjust to your partition and label)
DEV_SSD="/dev/nvme1n1p1"

# Run ntfsfix quietly
sudo /usr/bin/ntfsfix --clear-dirty "${DEV_SSD}"

# Try to mount with udisksctl (same as Thunar)
udisksctl mount -b "${DEV_SSD}"

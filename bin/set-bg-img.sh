#!/bin/bash

arch_dir="$HOME/Picture/Arch"
miku_dir="$HOME/Picture/Miku"
acg_dir="$HOME/Picture/Acg"
fav_dir="/home/chithriw/Picture/Fav-Wallpaper"
sex_dir="/home/chithriw/Picture/Sex"
scenery_dir="/home/chithriw/Picture/Scenery"

arch_img=$(find "${arch_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)
miku_img=$(find "${miku_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)
fav_img=$(find "${fav_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)
acg_img=$(find "${acg_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)
sex_img=$(find "${sex_dir}" -type f -name "*.jpg" -o -name "*.png" | shuf --head-count=1)
scenery_img=$(find "${scenery_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)

function main() {
    if [[ $# -eq 0 ]]; then
        feh --bg-max "${arch_img}"; exit
    fi
    start_picom
    case "${1,,}" in
        "acg")
            feh --bg-max "${acg_img}"
            ;;
        "miku")
            feh --bg-max "${miku_img}"
            ;;
        "fav")
            feh --bg-max "${fav_img}"
            ;;
        "sex")
            feh --bg-max "${sex_img}"
            ;;
        "sc")
            feh --bg-max "${scenery_img}"
            ;;
        *)
            echo "Invalid input argument"
            ;;
    esac
}

function start_picom() {
    if ! pgrep -x "picom" > /dev/null; then
        picom --daemon
    fi
}

main "$@"; exit

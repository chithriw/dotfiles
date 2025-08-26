#!/usr/bin/env bash

acg_dir="$HOME/Pictures/Acg"
anm_dir="$HOME/Pictures/Anime"
fav_dir="$HOME/Pictures/Fav-Wallpaper"
snry_dir="$HOME/Pictures/Scenery"

dir_arr=(
    "$acg_dir"
    "$fav_dir"
    "$anm_dir"
    "$snry_dir"
)

# ensure image direcotry is existing
for dir in "${dir_arr[@]}"; do
    if [[ ! -d "${dir}" ]]; then
        mkdir -p "${dir}"
        echo $dir
    fi
done

fav_img=$(find "${fav_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)
acg_img=$(find "${acg_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)
anm_img=$(find "${anm_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)
snry_img=$(find "${snry_dir}" -type f -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" | shuf --head-count=1)

function main() {
    if [[ $# -eq 0 ]]; then
        feh --bg-max "${snry_img}"; exit
    fi
    start_picom
    case "${1,,}" in
        "acg")
            feh --bg-max "${acg_img}"
            ;;
        "anm")
            feh --bg-max "${anm_img}"
            ;;
        "fav")
            feh --bg-max "${fav_img}"
            ;;
        "snry")
            feh --bg-max "${snry_img}"
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

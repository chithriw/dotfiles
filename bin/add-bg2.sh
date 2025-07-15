#!/usr/bin/env bash

bg_img_info="$HOME/.fehbg"

# realpath
running_bg_img_path=$(grep -i 'picture' "${bg_img_info}" | awk -F "'" '{print $2}')
bg_img=$(basename "${running_bg_img_path}")
fav_dir="$HOME/Pictures/Fav-Wallpaper"
acg_dir="$HOME/Pictures/Acg"
anm_dir="$HOME/Pictures/Anime"
snry_dir="$HOME/Pictures/Scenery"

main() {
    # non input argument, add fav_dir
    if [[ $# -eq 0 ]] && existImg "${fav_dir}" "${bg_img}"; then
        cp -f "${running_bg_img_path}" "${fav_dir}"
        echo "Add ${running_bg_img_path} to ${fav_dir}" 
        exit
    fi

    case "${1,,}" in
        "fav")
			if ! existImg "${fav_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${fav_dir}"
                echo "Add ${running_bg_img_path} to ${fav_dir}" 
			fi
            ;;
        "acg")
			if ! existImg "${acg_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${acg_dir}"
                echo "Add ${running_bg_img_path} to ${acg_dir}" 
			fi
            ;;
        "anm")
			if ! existImg "${anm_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${anm_dir}"
                echo "Add ${running_bg_img_path} to ${anm_dir}" 
			fi
            ;;
        "snry")
			if ! existImg "${snry_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${snry_dir}"
                echo "Add ${running_bg_img_path} to ${snry_dir}" 
			fi
            ;;
        *)
            echo "Invalid input argument"
            ;;
    esac
}

existImg() {
    local fav_dir=$1
    local file_name=$2
    if [[ -e ${fav_dir}/${file_name} ]]; then
        return 1
    else
        return 0
    fi
}

main "$@"; exit

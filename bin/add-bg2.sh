#!/usr/bin/env bash

bg_img_info="$HOME/.fehbg"

# realpath
running_bg_img_path=$(grep -i 'picture' "${bg_img_info}" | awk -F "'" '{print $2}')
bg_img=$(basename "${running_bg_img_path}")

main() {
    # non input argument, add fav_dir
    if [[ $# -eq 0 ]] && ! existImg "${fav_dir}" "${bg_img}" -eq 0 ; then
        cp -f "${running_bg_img_path}" "${fav_dir}"
        exit
    fi

    case "${1,,}" in
        "fav")
			if ! existImg "${fav_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${fav_dir}"
			fi
            ;;
        "acg")
			if ! existImg "${fav_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${fav_dir}"
			fi
            ;;
        "anm")
			if ! existImg "${fav_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${fav_dir}"
			fi
            ;;
        "snry")
			if ! existImg "${fav_dir}" "${bg_img}"; then
				cp -f "${running_bg_img_path}" "${fav_dir}"
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
        echo "Current image ${running_bg_img_path} is existing ${fav_dir}!"
        return 0
    else
        return 1
    fi
}

main "$@"; exit

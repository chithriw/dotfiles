#!/usr/bin/env bash

bg_img_info="$HOME/.fehbg"
running_bg_img=$(grep -i 'picture' "${bg_img_info}" | awk -F "'" '{print $2}')

main() {
    if [[ ]]; then
        rm -f "${running_bg_img}"
        echo "Remove running background image: ${running_bg_img}"
    else 
        echo "Not found running background image"
    fi
}

main "$@"; exit

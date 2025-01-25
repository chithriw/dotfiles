#!/usr/bin/env bash

bg_img_info="$HOME/.fehbg"
running_bg_img=$(grep -i 'picture' ${bg_img_info} | awk -F "'" '{print $2}')

main() {
    rm -f ${running_bg_img}
}

main "$@"; exit

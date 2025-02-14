#!/usr/bin/env bash

scenery_dir="$HOME/Music/Scenery"
acg_dir="$HOME/Music/Acg"
default_dir="$HOME/Music/Default"
ghibli_dir="$HOME/Music/Ghibli"
english_dir="$HOME/Music/English"

music_dir_arr=(
    "${scenery_dir}"
    "${acg_dir}"
    "${default_dir}"
    "${ghibli_dir}"
    "${english_dir}"
)

function main() {
    for dir in "${music_dir_arr[@]}"; do
        ensure_dir_exist $dir
    done

    if [[ $# -eq 0 ]]; then
        audacious --enqueue ${default_dir}; exit
    fi
    case "${1,,}" in
        "acg")
            audacious --enqueue ${acg_dir}
            ;;
        "gbl")
            audacious --enqueue ${ghibli_dir}
            ;;
        "en")
            audacious --enqueue ${english_dir}
            ;;
        "sc")
            audacious --enqueue ${scenery_dir}
            ;;
        *)
            echo "Invalid input argument"
            ;;
    esac
}

function ensure_dir_exist() {
    if [[ ! -d $1 ]]; then
        mkdir -p $1
    fi
}

main $@ ; exit

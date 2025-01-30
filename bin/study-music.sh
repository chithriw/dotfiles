#!/usr/bin/env bash

scenery_dir="$HOME/Music/Scenery"
acg_dir="$HOME/Music/Acg"
ghibli_dir="$HOME/Music/Ghibli"
english_dir="$HOME/Music/English"

function main() {
    if [[ $# -eq 0 ]]; then
        audacious --enqueue ${ghibli_dir}; exit
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

main $@ ; exit

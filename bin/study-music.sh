#!/usr/bin/env bash

wa_dir="$HOME/Music/WA"
col_dir="$HOME/Music/Collection"
bright_dir="$HOME/Music/Bright"
ghibili_dir="$HOME/Music/Ghibili"

function main() {
    if [[ $# -eq 0 ]]; then
        audacious --enqueue ${bright_dir}; exit
    fi
    case "${1,,}" in
        "col")
            audacious --enqueue ${col_dir}
            ;;
        "gbl")
            audacious --enqueue ${ghibili_dir}
            ;;
        *)
            echo "Invalid input argument"
            ;;
    esac
}

main $@ ; exit

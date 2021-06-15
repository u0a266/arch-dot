#!/bin/bash
all_off="$(tput sgr0)"
bold="${all_off}$(tput bold)"
blue="${bold}$(tput setaf 4)"
yellow="${bold}$(tput setaf 3)"

note() {
    printf "${blue}::${yellow} pacman:${bold} $1${all_off}\n"
}

pacman -Qdtt || note "孤立パッケージは見つかりませんでした" 

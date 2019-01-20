#!/bin/bash

bashrcd_include() {
    local BASHRCD_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    source "${BASHRCD_DIR}/${1}"
}

bashrcd_include ./generic.bash

if test ! -z "${MSYSTEM}"
then
    case ${MSYSTEM} in
        MINGW64) bashrcd_include ./windows_msys2_mingw64.bash ;;
        MINGW32) bashrcd_include ./windows_msys2_mingw32.bash ;;
        MSYS) bashrcd_include ./windows_msys2_msys32.bash ;;
    esac
fi

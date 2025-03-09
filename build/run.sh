#!/bin/sh

set -e

distro=$(cat /etc/os-release | grep -E "^ID=" | cut -d= -f2 | sed -e 's/"//g')

exec sh "$(dirname "$0")/${distro}/$1.sh"

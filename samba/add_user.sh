#!/bin/bash
set -ex

# Add a user to the Samba server
echo -e "xx\xx" | smbpasswd -a root >/dev/null 2>&1
useradd shoppon && echo -e "xx\xx" | smbpasswd -a shoppon >/dev/null 2>&1
useradd wxd && echo -e "xx\nxx" | smbpasswd -a wxd >/dev/null 2>&1

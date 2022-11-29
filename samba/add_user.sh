#!/bin/bash
set -ex

# Add a user to the Samba server
echo -e "222333\n222333" | smbpasswd -a root >/dev/null 2>&1
useradd shoppon && echo -e "222333\n222333" | smbpasswd -a shoppon >/dev/null 2>&1
useradd wxd && echo -e "wxd\nwxd" | smbpasswd -a wxd >/dev/null 2>&1

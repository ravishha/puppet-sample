#!/usr/bin/env bash

NEWEST_VBOXGUESTADDITIONS_DIR=`find /opt/ -maxdepth 1 -mindepth 1 -name "VBoxGuestAdditions-*" | tail -n 1`;

if [[ ! -d "/usr/lib/VBoxGuestAdditions" && -n "$NEWEST_VBOXGUESTADDITIONS_DIR" ]];
then
    ln -s ${NEWEST_VBOXGUESTADDITIONS_DIR}/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
fi

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes

10.0.15.11	pptmstr

10.0.15.21	pptclnt1
10.0.15.22	pptclnt2
EOL
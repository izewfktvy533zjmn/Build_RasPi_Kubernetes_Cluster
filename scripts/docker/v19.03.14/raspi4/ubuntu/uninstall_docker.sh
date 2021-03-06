#!/bin/bash


if [ $(whoami) != "root" ]; then
    echo 'You are not root.'
    echo 'You need to be root authority to execute.'
    exit 1
fi


apt remove --purge -y docker-ce docker-ce-cli containerd.io

usermod -G "" ubuntu

echo
echo 'Done.'
echo 'You should reboot your Raspberry Pi.'

exit 0

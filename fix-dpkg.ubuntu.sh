#!/bin/sh
sudo systemctl disable apt-daily.service &&
    sudo systemctl disable apt-daily.timer

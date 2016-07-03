#!/bin/sh

conky -c ~/.conky/NightDrive/conkyrc &
python ~/.conky/NightDrive/scripts/mpd_infos.py

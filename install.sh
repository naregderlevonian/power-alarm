#!/bin/sh

sudo cp power-alarm /usr/local/bin/
sudo cp power-alarm.service /usr/lib/systemd/user/

systemctl --user daemon-reload
systemctl --user enable --now power-alarm.service

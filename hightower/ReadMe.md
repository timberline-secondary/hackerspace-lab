# The Citadel
Server for odds and ends

## SAMBA Share for TV Displays
Raspberry Pi Slideshow: 
http://www.binaryemotions.com/digital-signage/raspberry-slideshow/

????
User: pi, PW: live

For adding images, password: pi-slideshow

Scripts: https://github.com/timberline-secondary/hackerspace-scripts/tree/master/bin/TV_Displays

nightly reboot with:
```
crontab - e
sudo 0 6   *   *   *    /sbin/shutdown -r +5
```

Set host and timezone with: `sudo raspi-config`


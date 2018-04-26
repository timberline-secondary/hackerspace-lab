# The Citadel
Server for odds and ends

## JetBrains License Server
https://www.jetbrains.com/help/license_server/getting_started.html

installed to: `/opt/jetbrains`

starting server: `sudo /opt/jetbrains/bin/license-server.sh start`

logs: `/opt/jetbrains/logs/`

Need this?
`<license_server_home>\bin\license-server.bat configure --jetty.virtualHosts.names=proxy-server.mydomain.com`
https://www.jetbrains.com/help/license_server/setting_host_and_port.html

## SAMBA Share for TV Displays
Raspberry Pi Slideshow: 
http://www.binaryemotions.com/digital-signage/raspberry-slideshow/

User: pi, PW: live

For adding images, password: pi-slideshow

Scripts: https://github.com/timberline-secondary/hackerspace-scripts/tree/master/bin/TV_Displays

nightly reboot with:
```
crontab - e
sudo 0 6   *   *   *    /sbin/shutdown -r +5
```

Set host and timezone with: `sudo raspi-config`

## Grafana

Install: http://docs.grafana.org/installation/debian/

Prometheus:
https://www.digitalocean.com/community/tutorials/how-to-install-prometheus-on-ubuntu-16-04

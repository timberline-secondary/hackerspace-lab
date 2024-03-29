## pi-tv[1-4]

A Raspberry Pi runs each of the four art shrine TVs:

* Hostname: pi-tv1 (pi-tv2, etc)
* Username: pi
* Pw: live (default for raspberry pi slideshow)

OS: [Raspbery Pi Slideshow Donor's Edition](https://www.binaryemotions.com/raspberry-slideshow-download/)

### Setup Instructions

1. download the raspberry slideshow image -- currently using v14.0 from here: https://www.binaryemotions.com/__2021/rs-14.0-donors.zip
2. download Raspberry Pi Imager from here (use v1.6.2+): https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb
3. use the disk app in ubuntu and remove all partitions from an sd card, leaving only free space
4. open raspberry pi imager and in operating system choose custom and use the previously downloaded *.img file (raspberry slideshow image)
5. for storage choose the SD card
6. write to raspberry pi
7. put SD card back into pi
8. run `sudo raspi-config` to set hostname to `pi-tv#` and connect to wifi if needed.
9. plug in a USB stick that has only a media.conf file (in that file specify the samba share details, an example one is attached) in it into the Pi
    success!
    
    #### media.conf
    update tv# to the appropriate # matching the tv
    ```
    # /var/lib/rs/media.conf
    smb.share: //hightower/tv1
    smb.username: pi-slideshow
    smb.password: hackerberry
    
    # Remote media refresh.
    # Values yes|no.
    media.refresh: yes
    ```

10. Move media.conf to `/var/lib/rs/media.conf` on the pi and remove USB stick.

### Setup with Wifi

1. Do steps 1 - 10 of **Setup Instructions**
2. Edit the file /etc/network/interfaces with the following:
    
    #### interfaces
    ```
    ...
    
    allow-hotplug wlan0
    iface wlan0 inet dhcp
        wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
    ```

3. Edit the file located in /etc/wpa_supplicant/wpa_supplicant.conf with the following:
    
    #### wpa_supplicant.conf
    ```
    country=GB
    ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
    update_config=1
    
    network={
        ssid="<NETWORK NAME HERE>"
        psk="<NETWORK PASSWORD HERE IN PLAINTEXT>"
        key_mgmt=WPA-PSK
    }
    ```
    
4. `rfkill unblock 0`   
5. `sudo reboot`

### Add crontab turning off/on display

1. change the timezone to America/Vancouver in raspi-config under localization options
2. run `sudo crontab -e` and paste the following:
    
    #### crontab
    ```
    ...

    # 4 pm || 16:00
    00 16 * * * /usr/bin/bash -c "/usr/bin/echo 'standby 0' | /usr/bin/cec-client -s -d 1"

    # 7 am || 07:00
    00 07 * * * /usr/bin/bash -c "/usr/bin/echo 'on 0' | /usr/bin/cec-client -s -d 1"
    ```
    
3. Reboot & you're done!

### Adding and removing art

Art can be added through the Hackerspace's `control-panel` here https://github.com/timberline-secondary/hackerspace-scripts-2

We only use videos (allows us to display in alphabetical order), so all images, after adding, need to be combined into a video using the `control-panel`, and then saved to the TV's samba share (or overwritten if new art is added and new video created for them including the new art)

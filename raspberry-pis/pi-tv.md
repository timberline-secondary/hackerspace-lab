## pi-tv[1-4]

A Raspberry Pi runs each of the four art shrine TVs:

* Hostname: pi-tv1 (pi-tv2, etc)
* Username: pi
* Pw: live (default for raspberry pi slideshow)

OS: [Raspbery Pi Slideshow Donor's Edition](https://www.binaryemotions.com/raspberry-slideshow-download/)

### Setup Instructions

1. download the raspberry slideshow image -- currently using v14.0 from here: https://www.binaryemotions.com/__2021/rs-14.0-donors.zip
1. download Raspberry Pi Imager from here (use v1.6.2+): https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb
1. use the disk app in ubuntu and remove all partitions from an sd card, leaving only free space
2. open raspberry pi imager and in operating system choose custom and use the previously downloaded *.img file (raspberry slideshow image)
3. for storage choose the SD card
4. write to raspberry pi
5. put SD card back into pi
6. run `sudo raspi-config` to set hostname to `pi-tv#` and connect to wifi if needed.
7. plug in a USB stick that has only a media.conf file (in that file specify the samba share details, an example one is attached) in it into the Pi
    success!
    
    #### media.conf
    update tv# to the appropriate # matching the tv
    ```
    # /var/lib/rs/media.conf
    smb.share: //hightower/tv1
    smb.username: pi-slideshow
    smb.password: hackerberry
    ```

8. Move media.conf to `/var/lib/rs/media.conf` on the pi and remove USB stick.

### Adding and removing art

Art can be added through the Hackerspace's `control-panel` here https://github.com/timberline-secondary/hackerspace-scripts-2

We only use videos (allows us to display in alphabetical order), so all images, after adding, need to be combined into a video using the `control-panel`, and then saved to the TV's samba share (or overwritten if new art is added and new video created for them including the new art)

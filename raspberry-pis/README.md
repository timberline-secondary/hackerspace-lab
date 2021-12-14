## General setup for all Pis

1. `sudo apt-get install unattended-upgrades`
1. `sudo nano /etc/apt/apt.conf.d/50unattended-upgrades` uncomment and change these lines:
   - Unattended-Upgrade::Remove-Unused-Dependencies "true";
   - Unattended-Upgrade::Automatic-Reboot "true";
   - Unattended-Upgrade::Automatic-Reboot-WithUsers "true";
   - Unattended-Upgrade::Automatic-Reboot-Time "02:00";

 

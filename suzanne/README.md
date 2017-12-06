# Suzanne and other netrendering slaves

# Setting up a netrender slave
1. Make sure the computer has the same version of Blender installed as the clients
1. For GPU slaves, place the updated [netrender addon](https://github.com/timberline-secondary/Blender-Network-Render-Additions) into `/usr/share/blender/#.##/scripts`
1. Create a slaveGPU.blend file with the same version of blender, with desired netrender slave settings.  Save it to: `/opt/netrender-startup/slaveGPU.blend`
1. Install the systemd unit:
   1. Download the service file:`sudo wget https://raw.githubusercontent.com/timberline-secondary/hackerspace-lab/master/suzanne/netrender-slave.service /etc/systemd/system/`
   1. Enable the service: `sudo systemctl enable netredner-slave`
   1. Start the service: `sudo systemctl start netrender-slave`
   1. Test to make sure it works (it should appear as a slave under the master: http://suzanne:8001/)
   1. Reboot the computer to make sure the slave starts up on reboot.  Sometimes the master takes a while to drop old slaves, so it may appear as a second slave under the same name)

# Suzanne -- OLD --
Suzanne is our network render server. (dual 1080 GPUs)

## Screens
The master and slaves run on screens.  run the `screen -ls` command to see if they are running.
```
admin@suzanne:~$ screen -ls
There are screens on:
	20554.slave	(2017-09-07 10:52:19 AM)	(Detached)
	20508.master	(2017-09-07 10:48:41 AM)	(Attached)
```


### Starting Master and Slave on Suzanne

1. `screen -S master`
2. `/opt/netrender-startup/master.sh`
3. Ctrl + A, D  # This will detach you from the screen and go back to the normal terminal.
4. `screen -S slave`
5. `/opt/netrender-startup/slave.sh`
6. Ctrl + A, D
7. Test to make sure things are working by going to the netrender master page: http://suzanne:8001/

### Start Slave on Renderman

1. ssh to `tbl-renderman`
2. start the slave screen and run the slave instance of blender as above.

### Troubleshooting

1. If the master or server have crashed, you can reattach to the screen: `screen -r master`
2. Then quit blender if it is still running: Ctrl + C
3. And start it again: `/opt/netrender-startup/master.sh`






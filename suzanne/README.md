
# Suzanne
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






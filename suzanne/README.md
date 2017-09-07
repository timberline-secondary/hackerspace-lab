
# Suzanne
Suzanne is our network render server. (dual 1080 GPUs)

## Screens
The master and slaves run on screens.  run the `screen -ls` command to see if they are running.
````
admin@suzanne:~$ screen -ls
There are screens on:
	20554.slave	(2017-09-07 10:52:19 AM)	(Detached)
	20508.master	(2017-09-07 10:48:41 AM)	(Attached)
```` 


### Starting Master and Slave on Suzanne
#. `screen -S master`
#. `/opt/netrender-startup/master.sh`
#. Ctrl + A, D  # This will detach you from the screen and go back to the normal terminal.
#. `screen -S slave`
#. `/opt/netrender-startup/slave.sh`
#. Ctrl + A, D
#. Test to make sure things are working by going to the netrender master page: 

hackerspace_admin@suzanne:~$ screen -ls
There are screens on:
	20554.slave	(2017-09-07 10:52:19 AM)	(Detached)
	20508.master	(2017-09-07 10:48:41 AM)	(Attached)




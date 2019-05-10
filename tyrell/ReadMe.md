
# File Server
`/nfshome`

Backs up to Stark via rsync

https://github.com/timberline-secondary/hackerspace-lab/tree/master/stark

### /etc/exports

/nfshome  *(rw,async,no_subtree_check,no_root_squash)

### removing old cache files
These take up a LOT of space! Delete any chace files that haven't been accessed in 180 days or more.  Make a cronjob

`sudo find /nfshome/*/.cache/ -depth -type f -atime +180 -delete`


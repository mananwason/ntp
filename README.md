# ntp
To setup the ntp server on your pc, first install ntp using
```
	yum install ntp
```
Then open ``` /etc/ntp.conf ``` file and add these two restict lines 
to restrict the source to query or modify the service on the system
```
	restrict default kod nomodify notrap nopeer noquery
	restrict -6 default kod nomodify notrap nopeer noquery
	restrict 127.0.0.1
```
Add the local clock to get time from it
```
	server  127.127.1.0 # local clock
	fudge   127.127.1.0 stratum 5
```
For specifying drift and log files add
```
	driftfile /var/lib/ntp/ntp.drift
	logfile /var/log/ntp.log
```

## For Client Side

On the client side add 
```
	server 192.168.1.1 prefer
```
where 192.168.1.1 is the IP of the ntp server.

Now start the ntp daemon ```/etc/init.d/ntp start``` 

To update the local date and time, do ```ntpdate –u 192.168.1.1```


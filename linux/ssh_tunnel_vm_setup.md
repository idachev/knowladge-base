# Setup SSHD Config

Add this to allow listen for ssh reverse tunnels:

```
GatewayPorts yes
```

to 

```
/etc/ssh/sshd_config
```

# Shutdown to save Costs:

Add in root crontab this:
```
30 19 * * * /usr/sbin/shutdown -h now
```

Mine the timezones!


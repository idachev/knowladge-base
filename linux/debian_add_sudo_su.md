In debian an user is not added by default to use sudo command.

So what I found most proper is to add user to execute sudo su
which can be handled by editing with command:
```bash
visudo -f /etc/sudoers.d/<user>
```

And add the following line:
```text
<user> ALL=(ALL:ALL) ALL
```

# Wireguard Setup

Check:
https://stackoverflow.com/questions/61640145/can-i-make-wireguard-vpn-peers-to-talk-to-each-other
https://www.cyberciti.biz/faq/ubuntu-20-04-set-up-wireguard-vpn-server/

# IP FORWARD Setup

Check is on local Mint/Ubuntu the IP FORWARD is enabled with
```bash
sudo iptables -S
```

To enable only for wg0 interface use:
```bash
sudo iptables -A FORWARD -i wg0 -o wg0 -j ACCEPT
```

On Debian server we also need to check this:
```bash
sudo sysctl net.ipv4.ip_forward
```

Edit to permenantlly allow IP FORWARD if it is not:
```bash
sudo vim /etc/sysctl.conf
```


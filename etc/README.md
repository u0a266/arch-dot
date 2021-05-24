# etc

```bash
cat fstab|sudo tee -a /etc/fstab
```

```bash
sudo chattr +i /etc/resolv.conf
```

# Improve security

```bash
sudo chmod 700 /boot /etc/{iptables,arptables}
```

```bash
echo "Defaults editor=/usr/bin/rvim"|sudo tee -a /etc/sudoers
```

Enable apparmor

```bash
lsm=lockdown,yama,apparmor,bpf
```

# Change ~/.cache to tmpfs

```bash
echo "tmpfs   $HOME/.cache      tmpfs   noatime,nodev,nosuid,size=400M  0       0"|sudo tee -a /etc/fstab
```

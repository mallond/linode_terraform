Server Host Setup
Step 1 - Client side SSH Keygen
```
ssh-keygen
```
Step 2 - Copy key to host servers
```
ssh-copy-id cloud_user@54.162.142.210
ssh-copy-id cloud_user@54.152.95.244

```
Step 3 - Login and test your copied id
```
ssh cloud_user@54.162.142.210
ssh cloud_user@54.152.95.244
```
Step 4 - Disable login by password, do this for each server
```
sudo nano /etc/ssh/sshd_config
> PasswordAuthentication no
sudo systemctl restart ssh

```

Create our update your host file
```
cat > ~/ansible/hosts << 'EOF'
[nginx]
54.162.142.210
54.152.95.244

[hello-world]
54.152.95.244

EOF
```


Exercise
```
ansible ubuntu-dev -m raw -a "apt-get update && apt-get install -y python-minimal python-simplejson" -i hosts
```


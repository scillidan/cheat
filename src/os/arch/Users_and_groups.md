# [Users and groups](https://wiki.archlinux.org/title/Users_and_groups)

## command

```sh
# Add user
sudo useradd -m <user>
sudo passwd <user>
```

```sh
# Add group
sudo addgroup sudousers
# Add user into group
sudo usermod -aG sudousers <user>
# Remove user from group
sudo gpasswd -d <user> <group>
```

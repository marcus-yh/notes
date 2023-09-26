# apt - Advanced Package Tool

## apt

Remove dependencies that are not needed any more
```bash
sudo apt autoremove
```
### apt-mark
```bash
apt-mark showmanual
apt-mark showauto
```


## remove a package
```
sudo apt remove <PACKAGE_NAME>
```

## remove package and it's config
```
sudo apt purge <PACKAGE_NAME>
```

## determine what program that is needed for a file
apt-file search <FILE_PATH>

Example:
apt-file search /etc/ssh/sshd.conf


# list files related to a specific program
apt-file list <BINARY>

Example:
apt-file list tree

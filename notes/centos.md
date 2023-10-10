# CentOS notes

## install

on GUI installation remember:
* enter partitioning section.
* enter network section and turn cabel on.

## after install

`yum update`

`yum upgrade`

`yum install tmux`

### vbox guest addons

`sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm`

`sudo yum install perl gcc dkms kernel-devel kernel-headers make bzip2`

Check: The above command should produce a list of kernel header files.

`ls -l /usr/src/kernels/$(uname -r)`

From the virtual machine menu, click `Devices` -> `Insert Guest Additions CD Image`

`sudo mkdir -p /mnt/cdrom`

`sudo mount /dev/cdrom /mnt/cdrom`

`cd /mnt/cdrom`

`sudo sh ./VBoxLinuxAdditions.run`

`sudo init 6`

Verify:

`lsmod | grep vboxguest`

# yum

`yum check-update`

`yum check`

`yum update`

`yum autoremove`

---

```bash
yum install httpd
yum remove httpd
yum update httpd
yum reinstall httpd
```

установить из локальной директории
(поиск/установка зависимостей будут произведены из подключенных репозиториев)
```bash
yum localinstall httpd.rpm
```

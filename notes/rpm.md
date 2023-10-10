# creating RPM


## dependencies
```
mock rpmdevtools rpm-build rpmlint
```


## add user to mock group
```bash
sudo usermod -a -G mock $(whoami)
newgrp mock
```


## Instructions

Creates `~/rpmbuild` and structure inside:

`rpmdev-setuptree`


Download sources:

`spectool -gR SPECS/<specname>.spec`

(Or Create source from git):
```
git clone https://example.org/foo-bar.git
git archive --format=tar --prefix=foo-bar-1.0.0/ HEAD | gzip > ~/rpmbuild/SOURCES/foo-bar-1.0.0.tar.gz
```


Create srpm:

`rpmlint <specname>.spec`

`rpmbuild -bs ./SPECS/<specname>.spec`


Build for a specified arch:

`ls -l /etc/mock/*.cfg`

`mock -r centos-7-x86_64 --rebuild ./SRPMS/<specname>.src.rpm --resultdir ./RPM/`


check:
```
rpm --query --package --list ./RPM/<rpmarchive>.rpm
rpm --query --package --requires ./RPM/<rpmarchive>.rpm
rpm --query --package --provides ./RPM/<rpmarchive>.rpm
```

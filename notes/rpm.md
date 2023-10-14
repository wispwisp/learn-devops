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

Create spec file

`rpmdev-newspec ./SPECS/<specname>`


Download sources:

`spectool -g -R SPECS/<specname>.spec`

(Or Create source from git):
```
git clone https://example.org/foo-bar.git
git archive --format=tar --prefix=foo-bar-1.0.0/ HEAD | gzip > ~/rpmbuild/SOURCES/foo-bar-1.0.0.tar.gz
```


Create srpm:

`rpmlint <specname>.spec`

`rpmbuild -bs ./SPECS/<specname>.spec`

_(or use mock)_:
`mock -r centos-7-x86_64 --buildsrpm --sources ./SOURCES/ --spec ./SPECS/<specname>.spec --resultdir ./SRPMS`


Build for a specified arch:

`ls -l /etc/mock/*.cfg`

`mock -r centos-7-x86_64 --rebuild ./SRPMS/<specname>.src.rpm --resultdir ./RPM/`


check:
```
rpm --query --package --list ./RPM/<rpmarchive>.rpm
rpm --query --package --requires ./RPM/<rpmarchive>.rpm
rpm --query --package --provides ./RPM/<rpmarchive>.rpm
```


Enter chroot for a specific arch:

`mock -r fedora-39-i386 --enable-net --shell`


Check by install in docker:

```bash
docker run -it --rm -v$(pwd -P)/RPM/rpm.rpm:/rpms/rpm.rpm:ro centos:7 /bin/bash
yum localinstall rpm.rpm
```


clean:
```
/var/cache/mock
/var/lib/mock
mock --scrub=all
```


## Spec file:

Expand macros:

`rpm --eval %{_bindir}`

`rpm --eval %{?dist}`

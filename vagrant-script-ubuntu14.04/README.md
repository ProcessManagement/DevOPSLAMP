Open Dev Ops - vagrant-script-ubuntu14.04
=========================================


## Setup vagrant (vmware)

**1) Ensure vmware is installed**

**2) Ensure vagrant is installed**

see http://www.vagrantup.com/downloads.html

**3) Install vagrant vmware (or fusion) plugin**

see http://docs.vagrantup.com/v2/vmware/installation.html

**4) Rename Vagrantfile-default to Vagrantfile**

Also enter the windows username and password (see `$WINDOWS_LOGIN_USERNAME` and `$WINDOWS_LOGIN_PASSWORD`)

**5) Enter `vagrant up` and `puphpet/ubuntu1404-x64` will download automatically**

**6) Once vagrant server started, ssh into the server**

- user = vagrant
- pw = vagrant
- ip = 10.10.4.3

**7) Run the server build script**

```
sudo su
/vagrant/projects/setup-local/install-scripts/install.sh
```
mysql root password can be `password` for the local server


**8) Add the following to the `C:\Windows\System32\drivers\etc\hosts` file**

```
# project name
10.10.4.3 projectname.dev
```

----


## Setup vagrant (virtual box)

**1) Ensure virtual box is installed**

Download VirtualBox Platform and VirtualBox Extension Pack
- https://www.virtualbox.org/wiki/Downloads

Create a Host-only network to ensure it's working
- File > Preferences > Network > Host-only Networks > Add host-only network

**2) Ensure vagrant is installed**

see http://www.vagrantup.com/downloads.html

**3) Install vagrant vmware (or fusion) plugin**

see http://docs.vagrantup.com/v2/vmware/installation.html

**4) Rename Vagrantfile-default to Vagrantfile**

Also enter the windows username and password (see `$WINDOWS_LOGIN_USERNAME` and `$WINDOWS_LOGIN_PASSWORD`)

**5) Enter `vagrant up` and `puphpet/ubuntu1404-x64` will download automatically**

**6) Once vagrant server started, ssh into the server**

- user = vagrant
- pw = vagrant
- ip = 10.11.4.3

**7) Run the server build script**

```
sudo su
/vagrant/projects/setup-local/install-scripts/install.sh
```
mysql root password can be `password` for the local server


**8) Add the following to the `C:\Windows\System32\drivers\etc\hosts` file**

```
# project name
10.11.4.3 projectname.dev
```
# spiceworks_apache
## install
```
$ sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
$ sudo yum install  puppet
$ puppet module install puppetlabs-apache # note - no sudo
$ cd ~/.puppet/modules/
$ git clone https://github.com/ChristopherMotes/spiceworks_apache.git
$ sudo puppet apply --modulepath=<type absolute path to homedir>/.puppet/modules -e "include spiceworks_apache"
```
## Notes
1. I test this with a default AWS RHEL 7 build
2. puppet labs apache module does the following for apache: installs, configures, enables, and starts
3. 

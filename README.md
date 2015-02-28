# Saltrb

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'saltrb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install saltrb

## Usage

```ruby
require 'saltrb/cmd'
# This will generate salt command as follow
# /usr/bin/salt '*' cmd.run 'uname -a'
Saltrb::Cmd.run("*", "uname -a")
```
CAVEAT: salt installation path is currently hard-coded to '/usr/bin/salt'
Available module: (CAVEAT: You have to include the module individually)
```ruby
saltrb/acl
saltrb/aliases
saltrb/alternatives
saltrb/archive
saltrb/at
saltrb/blockdev
saltrb/bridge
saltrb/buildout
saltrb/cloud
saltrb/cmd
saltrb/composer
saltrb/config
saltrb/cp
saltrb/cron
saltrb/daemontools
saltrb/data
saltrb/defaults
saltrb/dig
saltrb/disk
saltrb/django
saltrb/dnsmasq
saltrb/dnsutil
saltrb/environ
saltrb/etcd
saltrb/event
saltrb/extfs
saltrb/file
saltrb/gem
saltrb/genesis
saltrb/grains
saltrb/group
saltrb/grub
saltrb/hashutil
saltrb/hg
saltrb/hosts
saltrb/img
saltrb/incron
saltrb/ini
saltrb/introspect
saltrb/ip
saltrb/iptables
saltrb/key
saltrb/kmod
saltrb/locale
saltrb/locate
saltrb/logrotate
saltrb/lowpkg
saltrb/lvm
saltrb/match
saltrb/mine
saltrb/modjk
saltrb/monit
saltrb/mount
saltrb/mysql
saltrb/network
saltrb/nfs3
saltrb/openstack_config
saltrb/pagerduty
saltrb/partition
saltrb/pillar
saltrb/pip
saltrb/pkg
saltrb/pkg_resource
saltrb/publish
saltrb/pyenv
saltrb/quota
saltrb/rabbitmq
saltrb/raid
saltrb/random
saltrb/rbenv
saltrb/ret
saltrb/rsync
saltrb/rvm
saltrb/s3
saltrb/saltutil
saltrb/schedule
saltrb/seed
saltrb/selinux
saltrb/serverdensity_device
saltrb/service
saltrb/shadow
saltrb/smtp
saltrb/sqlite3
saltrb/ssh
saltrb/state
saltrb/status
saltrb/sys
saltrb/sysctl
saltrb/system
saltrb/test
saltrb/timezone
saltrb/tls
saltrb/user
saltrb/virtualenv
```

## Contributing

1. Fork it ( https://github.com/ruckuus/saltrb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

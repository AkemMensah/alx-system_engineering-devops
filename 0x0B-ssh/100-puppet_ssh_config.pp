#!/usr/bin/env bash
# Using Puppet to connect to server without password

file { '/etc/ssh/ssh_config':
	ensure => present,
}
file_line { 'Tun off passwd auth':
	path => '/etc/ssh/ssh_config',
	line => 'PasswordAuthentication no',
	match => '^#PasswordAuthentication',
}
file_line { 'Declare identity file':
	path => 'etc/ssh/ssh_config',
	line => 'IdentityFile ~/.ssh/school',
	match => '^#IdentificatyFile',
}

# set ssh config

include stdlib
file_line { 'ssh_config':
ensure => present,
path   => '/etc/ssh/ssh_config',
line   => "    PasswordAuthentication no\n    IdentityFile ~/.ssh/school",
match  => '#?\s+PasswordAuthentication\s+yes',
append_on_no_match => false,
}

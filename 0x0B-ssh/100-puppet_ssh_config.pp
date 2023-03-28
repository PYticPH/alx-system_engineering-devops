# set ssh config

file {'etc/ssh/ssh_config':
ensure  => present,
content => 'PasswordAuthentication no\nHostKey ~/.ssh/school',
path    => 'etc/ssh/ssh_config',
mode    => '0744',
}

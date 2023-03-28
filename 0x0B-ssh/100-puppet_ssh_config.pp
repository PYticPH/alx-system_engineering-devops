# set ssh config

file {'~/.ssh/ssh_config':
ensure  => present,
content => 'PasswordAuthentication no\nHostKey ~/.ssh/school',
path    => '~/.ssh/ssh_config',
mode    => '0744',
}

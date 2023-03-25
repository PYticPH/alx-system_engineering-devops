# Create a file
file {'/tmp/school':
ensure  => present,
content => 'I love Puppet',
path    => '/tmp/school',
mode    => '0744',
group   => www-data,
owner   => www-data,
}

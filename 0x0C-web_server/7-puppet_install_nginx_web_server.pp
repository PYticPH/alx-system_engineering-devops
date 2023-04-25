# A puppet manifest to perform task 3

#update repo
exec {'update repo':
  command =>  '/usr/bin/apt-get update',
}

#install nginx
package {'nginx':
  ensure  =>  installed,
}

#create sample page
file {'/var/www/html/index.nginx-debian.html':
  ensure  =>  file,
  content =>  "Hello World!\n",
}

#configure web server redirection
include stdlib
file_line {'default':
  ensure => present,
  path   => '/etc/nginx/sites-enabled/default',
  line   => "\tserver_name _;\n\n\tlocation /redirect_me {\n\t\trewrite ^/redirect_me https://www.youtube.com permanent;\n\t}",
  match  => 'server_name _;',
  append_on_no_match => false,
}

#restart nginx
exec {'nginx restart':
  command =>  'service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

# configuration of an Nginx server
# install Nginx
package { 'nginx':
    ensure => installed,
}
# set default file for redirection 301
file_line { 'Nginx default file':
    ensure => 'present',
    path   => '/etc/nginx/sites-available/default',
    after  => 'server_name _;',
    line   => "\n\tlocation /redirect_me {\n\t\t return 301 https://google.com;\n\t}\n",
}
# set a welcome file
file { '/var/www/html/index.html':
    content => 'Hello World!',
}
# require packages
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

# Using Puppet, create a file in /tmp
file { 'holberton':
  path    => '/tmp/holberton',
  ensure  => 'present',
  content => 'I love puppet',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
}
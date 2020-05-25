#Using strace to find out why Apache is returning a 500 error and then using
#Puppet to automate fix

exec { 'fix_typo':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  =>  'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g"
  /var/www/html/wp-settings.php',
  provider =>  'shell'}
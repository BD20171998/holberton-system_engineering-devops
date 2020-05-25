#Using strace  and then using Puppet to automate fix for 500 error on Apache

exec { 'fix_typo':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  =>  "sed -i 's/.phpp/.php/g' /var/www/html/wp-settings.php",
  provider =>  'shell'}

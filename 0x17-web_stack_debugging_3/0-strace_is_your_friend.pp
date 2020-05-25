#Using strace  and then using Puppet to automate fix for 500 error on Apache

exec { 'fix_typo':
  path     => '/bin',
  command  =>  "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/g'
  /var/www/html/wp-settings.php",
  }
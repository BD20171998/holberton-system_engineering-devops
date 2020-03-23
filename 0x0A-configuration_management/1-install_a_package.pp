# Using Puppet, install puppet-lint
package { 'puppet-lint':
  ensure          =>  'installed',
  install_options =>  ['-v', '2.1.1'],
}
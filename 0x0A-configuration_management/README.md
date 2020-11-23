# 0x0A Configuration management

## Learning Objectives

How to use Puppet

## Requirements

- All Bash files are created and compiled on Ubuntu 14.04.4 LTS
- All Puppet files are linted with Puppet Lint 2.1.1

## Tasks

<details>
<summary>View Contents</summary>

### [0. Create a file](./0-create_a_file.pp)

- Using Puppet, create a file in /tmp.

  - File path is /tmp/holberton
  - File permission is 0744
  - File owner is www-data
  - File group is www-data
  - File contains I love Puppet

```
root@6712bef7a528:~# puppet apply 0-create_a_file.pp
```

```
Notice: Compiled catalog for 6712bef7a528.ec2.internal in environment production in 0.04 seconds
Notice: /Stage[main]/Main/File[holberton]/ensure: defined content as '{md5}f1b70c2a42a98d82224986a612400db9'
Notice: Finished catalog run in 0.03 seconds
```

```
root@6712bef7a528:~#
root@6712bef7a528:~# ls -l /tmp/holberton
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/holberton
root@6712bef7a528:~# cat /tmp/holberton
```

### [1. Install a package](./1-install_a_package.pp)

- Using Puppet, install puppet-lint.

```
root@d391259bf577:/# puppet apply 1-install_a_package.pp
```

```
Notice: Compiled catalog for d391259bf577.hsd1.ca.comcast.net in environment production in 0.10 seconds
Notice: /Stage[main]/Main/Package[puppet-lint]/ensure: created
Notice: Finished catalog run in 2.83 seconds
```

```
root@d391259bf577:/# gem list
```

```ruby
*** LOCAL GEMS ***

puppet-lint (2.1.1)
```

### [2. Execute a command](./2-execute_a_command.pp)

- Using Puppet, create a manifest that kills a process named killmenow.

  - Must use the exec Puppet resource
  - Must use pkill

```
root@d391259bf577:/# puppet apply 2-execute_a_command.pp
```

```
Notice: Compiled catalog for d391259bf577.hsd1.ca.comcast.net in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[killmenow]/returns: executed successfully
Notice: Finished catalog run in 0.10 seconds
```

</details>

## Author
* **Robert Deprizio** - [BD20171998](https://github.com/BD20171998)

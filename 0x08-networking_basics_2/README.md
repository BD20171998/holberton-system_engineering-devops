# 0x08. Networking basics #1

## Learning Objectives

General

- What is localhost/127.0.0.1
- What is 0.0.0.0
- What is /etc/hosts
- How to display your machine’s active network interfaces

## Requirements

- All files are created and compiled on Ubuntu 14.04.4 LTS
- All files are linted with Shellcheck

## Tasks

<details>
<summary>View Contents</summary>

### [0. Localhost](./0-localhost)

- What is localhost?

1. A hostname that means this IP
2. A hostname that means this computer
3. An IP attached to a computer

### [1. All IPs](./1-wildcard)

- What is 0.0.0.0?

1. All IPv4 addresses on the local machine
2. All the IPs
3. It means null in networking

### [2. Change your home IP](./2-change_your_home_IP)

- Write a Bash script that configures an Ubuntu server with the below requirements.
  - localhost resolves to 127.0.0.2
  - facebook.com resolves to 8.8.8.8.

```
sylvain@ubuntu$ ping localhost
PING localhost (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.012 ms
^C
--- localhost ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.012/0.012/0.012/0.000 ms
sylvain@ubuntu$
sylvain@ubuntu$ ping facebook.com
PING facebook.com (157.240.11.35) 56(84) bytes of data.
64 bytes from edge-star-mini-shv-02-lax3.facebook.com (157.240.11.35): icmp_seq=1 ttl=63 time=15.4 ms
^C
--- facebook.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 15.432/15.432/15.432/0.000 ms
sylvain@ubuntu$
sylvain@ubuntu$ sudo ./2-change_your_home_IP
sylvain@ubuntu$
sylvain@ubuntu$ ping localhost
PING localhost (127.0.0.2) 56(84) bytes of data.
64 bytes from localhost (127.0.0.2): icmp_seq=1 ttl=64 time=0.012 ms
64 bytes from localhost (127.0.0.2): icmp_seq=2 ttl=64 time=0.036 ms
^C
--- localhost ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1000ms
rtt min/avg/max/mdev = 0.012/0.024/0.036/0.012 ms
sylvain@ubuntu$
sylvain@ubuntu$ ping facebook.com
PING facebook.com (8.8.8.8) 56(84) bytes of data.
64 bytes from facebook.com (8.8.8.8): icmp_seq=1 ttl=63 time=8.06 ms
^C
--- facebook.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 8.065/8.065/8.065/0.000 ms
```

### [3. Show attached IPs](./3-show_attached_IPs)

- Write a Bash script that displays all active IPv4 IPs on the machine it’s executed on.

```
sylvain@ubuntu$ ./3-show_attached_IPs | cat -e
10.0.2.15$
127.0.0.1$
```

### [4. Port listening on localhost](./4-port_listening_on_localhost)

- Write a Bash script that listens on port 98 on localhost.

Terminal 0

Starting my script.

```
sylvain@ubuntu$ sudo ./4-port_listening_on_localhost
```

Terminal 1

Connecting to localhost on port 98 using telnet and typing some text.

```
sylvain@ubuntu$ telnet localhost 98
Trying 127.0.0.2...
Connected to localhost.
Escape character is '^]'.
Hello world
test
```

Terminal 0

Receiving the text on the other side.

```
sylvain@ubuntu$ sudo ./4-port_listening_on_localhost
Hello world
test
```

</details>

## Author
* **Robert Deprizio** - [BD20171998](https://github.com/BD20171998)

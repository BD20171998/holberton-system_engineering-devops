# 0x0E. Web stack debugging #1

## Learning Objectives

How to debug a NGINX server with bad ports

## Requirements

- All Bash files are created and compiled on Ubuntu 14.04.4 LTS
- All Bash scripts are linted with Shellcheck

## Tasks

<details>
<summary>View Contents</summary>

### [0. Nginx likes port 80](./0-nginx_likes_port_80)

- Using your debugging skills, find out what’s keeping your Ubuntu container’s Nginx installation from listening on port 80. Feel free to install whatever tool you need, start and destroy as many containers as you need to debug the issue. Then, write a Bash script with the minimum number of commands to automate your fix.
  - Nginx must be running, and listening on port 80 of all the server’s active IPv4 IPs
  - Write a Bash script that configures a server to the above requirements

```
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/# curl 0:80
```

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome to nginx!</title>
    <style>
      body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
      }
    </style>
  </head>
  <body>
    <h1>Welcome to nginx!</h1>
    <p>
      If you see this page, the nginx web server is successfully installed and
      working. Further configuration is required.
    </p>

    <p>
      For online documentation and support please refer to
      <a href="http://nginx.org/">nginx.org</a>.<br />
      Commercial support is available at
      <a href="http://nginx.com/">nginx.com</a>.
    </p>

    <p><em>Thank you for using nginx.</em></p>
  </body>
</html>
```

</details>

## Author
* **Robert Deprizio** - [BD20171998](https://github.com/BD20171998)

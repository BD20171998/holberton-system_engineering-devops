# 0x0F. Load balancer

## Learning Objectives

How to set up a HAProxy Load Balancer

## Requirements

- All Bash files are created and compiled on Ubuntu 14.04.4 LTS
- All Bash scripts are linted with Shellcheck
- All Puppet files are linted with Puppet Lint 2.1.1

## Tasks

<details>
<summary>View Contents</summary>

### [0. Double the number of webservers](./0-custom_http_response-header)

- In this first task you need to configure web-02 to be identical to web-01. Fortunately, you built a Bash script during your web server project, and they’ll now come in handy to easily configure web-02. Remember, always try to automate your work!

  - Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
    - The name of the custom HTTP header must be X-Served-By
    - The value of the custom HTTP header must be the hostname of the server Nginx is running on
  - Write 0-custom_http_response-header so that it configures a brand new Ubuntu machine to the requirements asked in this task

```
sylvain@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
sylvain@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
```

### [1. Install your load balancer](./1-install_load_balancer)

- Install and configure HAproxy on your lb-01 server.
  - Configure HAproxy with version equal or greater than 1.5 so that it send traffic to web-01 and web-02
  - Distribute requests using a roundrobin algorithm
  - Make sure that HAproxy can be managed via an init script
  - Make sure that your servers are configured with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02. If not, follow this tutorial.
  - For your answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements

```
sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:17 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
X-Served-By: 03-web-01
Accept-Ranges: bytes

sylvain@ubuntu$ curl -Is 54.210.47.110
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 27 Feb 2017 06:12:19 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
X-Served-By: 03-web-02
Accept-Ranges: bytes
```

</details>


## Author
* **Robert Deprizio** - [BD20171998](https://github.com/BD20171998)

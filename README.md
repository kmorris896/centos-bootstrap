# CentOS Bootstrap

This repository will install [Apache Web Server](https://httpd.apache.org/) (packaged as `httpd`) and [php](https://www.php.net/).  Please scroll down to "Test Coverage" to learn what versions.

## Instructions

*Generally speaking*, you can run this script by loading it directly into bash:

`bash <(curl -Ls "https://raw.githubusercontent.com/kmorris896/centos-bootstrap/main/bootstrap.bash")`

The above script first calls [`curl`](https://curl.se/docs/manpage.html) and downloads the bootstrap file named in the URL.  From there it will redirect the script contents via `STDIN` to `bash`, which will then run it.

`curl` runs with options `-L` meaning follow redirects and `-s` for silent operation (meaning no output).

The script will assume you are running as root.  So make sure you `sudo su` if you aren't already.

In most cloud environments, when you launch a new server, you can run a "userscript" or a "bootstrap" file.  This file is often downloaded from the internet and then run directly on the system.  If your cloud provider provides such a feature, you can copy the following into the userscript box:

```bash
#!/bin/bash
set -xe

bash <(curl -Lks "https://raw.githubusercontent.com/kmorris896/centos-bootstrap/main/bootstrap.bash")
```

Userscripts often run as root so there is no need to `sudo su`.

Once the script runs, httpd and php should be ready for your code, assuming you know where they get installed.

## Test Coverage

| CentOS Version   | ami    | httpd Version    | PHP version |
|----------------- | ------ | ---------------- | ----------- |
| CentOS Stream 9  | ami-071eb93df3cfe5101 | 2.4.53-7.e19    | 8.0.20-3.e19    |
| CentOS Stream 8  | ami-09243ba0df36156d9 | 2.4.37-47    | 7.2.24-1 |
| CentOS 7 | ami-0b802bd2b502aa382 | 2.4.6 | 5.4.16 |

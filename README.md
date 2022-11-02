# CentOS Bootstrap

This repository will install [Apache Web Server](https://httpd.apache.org/) (packaged as `httpd`) and [php](https://www.php.net/) 8.0.  Although 8.1 is the latest version, CentOS does not have it available in their repositories.

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

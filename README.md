# CentOS Bootstrap

This repository will install [Apache Web Server](https://httpd.apache.org/) (packaged as `httpd`) and [php](https://www.php.net/) 8.0.  Although 8.1 is the latest version, CentOS does not have it available in their repositories.

## Instructions

*Generally speaking*, you can run this script by loading it directly into bash:

`bash <(curl -Lks "https://raw.githubusercontent.com/kmorris896/centos-bootstrap/main/bootstrap.bash")`

The script will assume you are running as root.  So make sure you `sudo su` if you aren't already.

In most cloud environments, when you launch a new server, you can run a "userscript" or a "bootstrap" file.  This file is often downloaded from the internet and then run directly on the system.  If your cloud provider provides such a feature, you can copy the following into the userscript box:

```bash
#!/bin/bash
set -xe

bash <(curl -Lks "https://raw.githubusercontent.com/kmorris896/centos-bootstrap/main/bootstrap.bash")
```

Once the script runs, httpd and php should be ready for your code, assuming you know where they get installed.

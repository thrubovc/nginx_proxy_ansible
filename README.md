# Ansible playbook for an Nginx reverse proxy

this is an ansible playbook that installs Nginx and configures it as a reverse proxy with TLS offloading.

The TLS certificate is created and automatically refreshed by certbot, which authenticates my server against Cloudflare, which is managing my domain.<br>
This authentication can be done against many other providers like Digitalocean, etc.

I used [this docker image](https://github.com/linuxserver/docker-letsencrypt) as the base for this setup and modified it to suit my needs. It is suitable for use in e.g. a Proxmox LXC dedicated for this purpose.

several subdomain conf files are present, this is just my setup and can be customized. I am leaving the internal IPs for individual services and the DNS server as examples, obviously they need to be changed for different setups.

**NB:**
Due to the nature of LXC containers on Proxmox, playbook runs as root. For use with setups where running the playbook as root is not an option, privileges need to be escalated for the necessary tasks with `become: True`

**Other features:**
It also installs the [VTS module](https://github.com/vozlt/nginx-module-vts) for use with Prometheus and Grafana.

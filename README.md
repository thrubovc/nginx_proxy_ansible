# Ansible playbook for an Nginx forward proxy

this is an ansible playbook that installs Nginx and configures it as a forward proxy with TLS offloading.

The TLS certificate is created and automatically refreshed by certbot, which authenticates my server against Cloudflare, which is managing my domain.

I used [this docker image](https://github.com/linuxserver/docker-letsencrypt) as the base for this setup and modified it to suit my needs. It is suitable for use in e.g. a Proxmox LXC dedicated for this purpose.

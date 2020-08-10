# Ansible playbook for an Nginx forward proxy

this is an ansible playbook that installs Nginx and configures it as a forward proxy with TLS offloading.

The TLS certificate is created and automatically refreshed by certbot, which authenticates my server against Cloudflare, which is managing my domain.

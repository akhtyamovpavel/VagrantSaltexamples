openssh-server:
  pkg.installed

sshd:
  service.running:
    - enable: True

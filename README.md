# Ansible playbook to setup a Debian 9 based node to use with rancher2

## FEATURES

* Setup HOSTNAME and a nice shell prompt
* install SSH keys
* install and configure iptables
** use only 1st IP for kubernetes "hostPort"
** restrict traffic to minimal required for rancher + kubernetes
* install and configure docker
* optionally setup wireguard for secured communication between nodes
* optionally install nfs client to use nfs volumes with kubernetes


## USAGE

* create one or more keyname.txt in ssh_keys
* create a hosts.ini file for your group of servers, add hosts, ssh key names and wireguard ips
* copy your ssh keys to the servers
* run:

```bash
ansible-playbook -i hosts-????.ini playbook.yml
```

* reboot before start rancher server or agent

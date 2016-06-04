# deploy-cluster

Deploy and manage computing clusters from a central location

## Installation

Right now, this only works on RHEL/CentOS 7.

Create/build the management server. Login to it as root.

Clone this repo somewhere

  git clone git@github.com:xpspectre/deploy-cluster.git

Setup ansible

  ./install_ansible.sh

Setup the management server using the `mgmt.yml` playbook.

  ansible-playbook mgmt.yml

## Notes

To test the TFTP server using a Windows client, see instructions at http://adventuresinosd.blogspot.com/2012/05/troubleshooting-tftp-service.html


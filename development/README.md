# Usage

## cli

TODO: UPDATE.

## swarm

`swarm/` is used to build a complete Swarm environment with swarm-server and swarm-nodes for testing purposes. `swarm/inventory/hosts` is a map of hosts and ports defined in `swarm/Vagrantfile`. If something goes wrong with the IP's you can check the generated IP's and ports for the vagrant boxes by running `vagrant ssh-config` in the `swarm/` directory and fix the `swarm/inventory/hosts` file with correct IP's and ports. This should not happen but just in case. Depending on the state and amount of running Vagrant boxes you might have, you need to fix the mapped ports.

Run everything to install the swarm into the development machines spun up by Vagrant.

```bash
cd swarm
vagrant up
cd ../../ansible
ansible-playbook -i ../development/swarm/inventory/hosts setup-swarm.yml
```

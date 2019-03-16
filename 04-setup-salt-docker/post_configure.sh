#!/bin/sh

echo "Setting minion configs"

echo "id: master" > /etc/salt/minion
echo "master: $(hostname -i)" >> /etc/salt/minion

echo "Starting services"

service salt-master restart
service salt-minion restart

salt-call state.highstate
salt-key -A -y
bash

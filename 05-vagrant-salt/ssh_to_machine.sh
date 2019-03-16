#!/bin/bash
vagrant ssh-config > .tmp_ssh_config
machine=$1
shift

ssh -F .tmp_ssh_config $machine $@

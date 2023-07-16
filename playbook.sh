#!/bin/bash

sudo ./change_permissons.sh
ansible-playbook local.yml --ask-become-pass --ask-vault-pass

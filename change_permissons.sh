#!/bin/bash

chown -R leo:leo .ssh
chmod 700 /home/leo/.ssh
chmod 644 /home/leo/.ssh/id_rsa.pub
chmod 600 /home/leo/.ssh/id_rsa

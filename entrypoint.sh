#!/bin/bash
set -e

if [ $SSH_KEY ]; then
  mkdir /root/.ssh
  chmod 0700 /root/.ssh
  echo $SSH_KEY | base64 -d >/root/.ssh/id_rsa
  chmod 0600 /root/.ssh/id_rsa
fi

exec salt-minion $*

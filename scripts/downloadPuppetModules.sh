#/bin/bash

dir='/vagrant/modules/'
safeveyModule='safeveypuppet'

yum install -y git

git submodule update --init --recursive

exit 0;

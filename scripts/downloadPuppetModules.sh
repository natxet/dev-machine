#/bin/bash

dir='/vagrant/modules/'
safeveyModule='safeveypuppet'

yum install -y git

cd ${dir}${safeveyModule}
git pull --rebase
cd -

puppet module install example42-puppi --modulepath $dir --version 2.1.12;
puppet module install example42-yum --modulepath $dir --version 2.1.26;
puppet module install example42-apache --modulepath $dir --version 2.1.12;

exit 0;

#/bin/bash

dir='/vagrant/modules/'
safeveyModule='safeveypuppet'

echo "Installing git command..."
yum install -y git

echo "Bringing safevey submodule up to date..."
cd ${dir}${safeveyModule}
git pull --rebase
cd -

echo "Installing Puppet modules..."
puppet module install example42-puppi --modulepath $dir --version 2.1.12;
puppet module install example42-yum --modulepath $dir --version 2.1.26;
puppet module install example42-apache --modulepath $dir --version 2.1.12;
puppet module install example42-php --modulepath $dir --version 2.0.8;

exit 0;

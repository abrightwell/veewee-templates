# Install Puppet

cat > /etc/yum.repos.d/puppetlabs.repo << EOM
[puppetlabs-dependencies]
name=puppetlabdsdependencies
baseurl=http://yum.puppetlabs.com/el/6/dependencies/\$basearch
enabled=1
gpgcheck=0

[puppetlabs]
name=puppetlabs
baseurl=http://yum.puppetlabs.com/el/6/products/\$basearch
enabled=1
gpgcheck=0
EOM

yum-config-manager --enable 'rhel-6-server-optional-rpms'

yum -y install puppet facter ruby-shadow

yum-config-manager --disable 'rhel-6-server-optional-rpms'

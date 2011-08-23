require_recipe "apt" 
require_recipe "git"
require_recipe "chef-jenkins:default"



# %w(git URLSCM build-publisher).each do |plugin|
#   jenkins_cli "install-plugin #{plugin}"
#   jenkins_cli "safe-restart"
# end

# Some neat package (subversion is needed for "subversion" chef ressource)
%w{ debconf ant subversion mc htop curl php5-xdebug php5-cli php-pear gawk}.each do |a_package|
  package a_package
end


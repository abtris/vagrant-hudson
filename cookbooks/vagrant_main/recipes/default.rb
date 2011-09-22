require_recipe "apt" 
require_recipe "git"
require_recipe "php"

execute "jenkins-key" do                                                                                                                            
  command "wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -"                                                                                     
  action :run                                                                                                                                                
end

execute "update-sources" do
  command "echo \"deb http://pkg.jenkins-ci.org/debian binary/\" >>/etc/apt/sources.list"
  action :run
end

execute "apt-update" do
  command "sudo apt-get update"
  action :run
end

# Some neat package (subversion is needed for "subversion" chef ressource)
%w{ debconf ant subversion mc htop curl php5-xdebug php5-curl gawk jenkins}.each do |a_package|
  package a_package
end

# discover the horde channel
%w{pear.pdepend.org pear.phpmd.org pear.phpunit.de components.ez.no pear.symfony-project.com}.each do |channel|
  php_pear_channel channel do
    action :discover
  end
end

php_pear_channel "pear.php.net" do
  action :update
end

php_pear "pear" do
  action :upgrade
end

%w{pdepend/PHP_Depend-beta phpmd/PHP_PMD-alpha phpunit/phpcpd phpunit/phploc PHPDocumentor PHP_CodeSniffer}.each do |pear_package|
  php_pear pear_package do
  	action :install
  end
end

php_pear "phpunit/PHP_CodeBrowser" do
  options "--alldeps"
  action :install
end

php_pear "phpunit/PHPUnit" do
  options "--alldeps"
  action :install
end

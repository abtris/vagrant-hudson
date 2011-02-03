require_recipe "apt" 

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
%w{ debconf subversion mc htop curl jenkins }.each do |a_package|
  package a_package
end

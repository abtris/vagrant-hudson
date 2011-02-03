# Vagrant VBox for Jenkins

This is the Debian package repository of Jenkins to automate installation and upgrade. To use this repository, first add the key to your system: 

	wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

Then add the following entry in your /etc/apt/sources.list: 

	deb http://pkg.jenkins-ci.org/debian binary/

Update your local package index, then finally install Jenkins: 

	sudo apt-get update
	sudo apt-get install jenkins

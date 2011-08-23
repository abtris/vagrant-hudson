wget http://localhost:8080/jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin clover
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin dry
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin htmlpublisher
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin jdepend
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin plot
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin pmd
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin violations
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin xunit
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin git
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin github
java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart

sudo git clone git://github.com/sebastianbergmann/php-jenkins-template.git /var/lib/jenkins/jobs/php-template
sudo chown -Rf jenkins /var/lib/jenkins/jobs/
java -jar jenkins-cli.jar -s http://localhost:8080 reload-configuration

sudo pear channel-discover pear.pdepend.org
sudo pear channel-discover pear.phpmd.org
sudo pear channel-discover pear.phpunit.de
sudo pear channel-discover components.ez.no
sudo pear channel-discover pear.symfony-project.com

sudo pear upgrade

sudo pear install pdepend/PHP_Depend-beta
sudo pear install phpmd/PHP_PMD-alpha
sudo pear install phpunit/phpcpd
sudo pear install phpunit/phploc
sudo pear install PHPDocumentor
sudo pear install PHP_CodeSniffer
sudo pear install --alldeps phpunit/PHP_CodeBrowser
sudo pear install --alldeps phpunit/PHPUnit

exit 0
pear channel-discover pear.pdepend.org
pear channel-discover pear.phpmd.org
pear channel-discover pear.phpunit.de
pear channel-discover components.ez.no
pear channel-discover pear.symfony-project.com

pear install pdepend/PHP_Depend-beta
pear install phpmd/PHP_PMD-alpha
pear install phpunit/phpcpd
pear install phpunit/phploc
pear install PHPDocumentor
pear install PHP_CodeSniffer
pear install --alldeps phpunit/PHP_CodeBrowser
pear install --alldeps phpunit/PHPUnit
#!/bin/bash
cd $HOME
git clone https://github.com/netty/netty
cd netty
sed -i '/<tcnative.version>*/c\    <tcnative.version>2.0.32.Final-SNAPSHOT</tcnative.version>' pom.xml

if -f /etc/crypto-policies/back-ends/java.config
then
	sed -i -e "s/ DH keySize\s*<\s*[0-9]*,//" /etc/crypto-policies/back-ends/java.config
	sed -i -e "s/ RSA keySize\s*<\s*[0-9]*,//" /etc/crypto-policies/back-ends/java.config
fi

mvn clean install
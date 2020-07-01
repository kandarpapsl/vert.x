#!/bin/bash
cd $HOME
git clone https://github.com/netty/netty-tcnative
cd netty-tcnative
if grep 'http://archive.apache.org' pom.xml
then
    sed -i 's/http:\/\/archive.apache.org/https:\/\/archive.apache.org/g' pom.xml
fi

sed -i '/<libresslVersion>*/c\    <libresslVersion>3.2.0</libresslVersion>' pom.xml

mvn clean install -Dmaven.test.skip=true

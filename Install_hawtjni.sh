#!/bin/bash
cd $HOME
git clone https://github.com/fusesource/hawtjni
cd hawtjni
mvn install -DskipTests

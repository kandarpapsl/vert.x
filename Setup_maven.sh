cd /opt
wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
tar xvf apache-maven-3.6.3-bin.tar.gz
ln -s apache-maven-3.6.3 maven
export M2_HOME=/opt/maven

echo "
export PATH=${M2_HOME}/bin:${PATH}
" > /etc/profile.d/maven.sh


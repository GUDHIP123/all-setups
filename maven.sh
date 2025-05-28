yum install java-17-amazon-corretto -y
java -version
# Download Maven
wget https://downloads.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz -P /tmp

# Extract to /opt
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt

# Create a symlink (optional, for easier updates)
sudo ln -s /opt/apache-maven-3.9.6 /opt/maven
sudo tee /etc/profile.d/maven.sh <<EOF
export M2_HOME=/opt/maven
export PATH=\$M2_HOME/bin:\$PATH
EOF

# Reload environment
source /etc/profile.d/maven.sh
mvn -version

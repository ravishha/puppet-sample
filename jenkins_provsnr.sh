#Installing Jenkins Server

sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update

sudo apt-get install -y jenkins

sudo touch /var/log/jenkins.log

echo "sudo java -jar /usr/share/jenkins/jenkins.war" | at now


sudo apt-get install -y vagrant

sudo apt-get install -y virtualbox

sudo wget https://releases.hashicorp.com/terraform/0.6.6/terraform_0.6.6_linux_amd64.zip

sudo mkdir /terraform

sudo unzip terraform_0.6.6_linux_amd64.zip  -d /terraform


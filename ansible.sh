
if [ ! -f /usr/bin/ansible ]
then
	sudo apt-get install -y software-properties-common
	sudo apt-add-repository -y ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install -y ansible
else
	echo "Ansible it's already installed" 
fi

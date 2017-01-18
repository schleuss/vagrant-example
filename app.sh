
if [ ! -d /app/ ]
then
  echo "Copiando aplicação de exemplo"
  sudo cp -a /vagrant/app/ /app
  sudo chown vagrant.vagrant /app
  cd /app
  echo "Instalando dependencias"
  sudo apt install -y gcc g++
fi

if [ ! -f /etc/init.d/node-service ]
then
  echo "Instalando serviço"
  sudo cp -a /vagrant/node-service /etc/init.d/node-service
  sudo chmod a+x /etc/init.d/node-service
  sudo mkdir -p /var/run/forever
  sudo chmod 777 /var/run/forever
  sudo update-rc.d node-service defaults
fi

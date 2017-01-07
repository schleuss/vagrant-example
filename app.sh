
if [ ! -d /app/ ]
then
  echo "Copiando aplicação de exemplo"
  sudo cp -a /vagrant/app/ /app
  sudo chown vagrant.vagrant /app
  cd /app
  echo "Instalando dependencias"
  sudo apt install -y gcc g++
fi

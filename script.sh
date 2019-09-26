############
## DOCKER ##
############

# instala docker
sudo apt-get update
sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# testa docker
sudo docker run hello-world

# lista containers em execução
sudo docker ps

# lista todos os conteiners
sudo docker ps -a

# inicia/para um conteiner
sudo docker start/stop NOME

###########
## MYSQL ##
###########

# instala mysql
sudo docker run --name NOME -e MYSQL_ROOT_PASSWORD=SENHA -d mysql/mysql-server:latest
# NOME = bd-mysql
# SENHA = senha

# executa mysql
sudo docker exec -it NOME bash
mysql -uroot -p

################
## POSTGRESQL ##
################

# instala postgres
sudo docker run --name NOME -e POSTGRES_PASSWORD=SENHA -d postgres
# NOME = bd-postgres
# SENHA = senha

# executa postgres
sudo docker exec -it NOME bash
psql -h localhost -U postgres -d postgres

###########
## MONGO ##
###########

# instala mongo (sem senha)
sudo docker run --name NOME -d mongo:latest
# NOME = bd-mongo

# executa mongo
sudo docker exec -it NOME bash
mongo

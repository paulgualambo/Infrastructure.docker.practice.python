# Infrastructure.docker.practice.python

Pre requisitos
Obtener el.gitignore
curl https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore >> .gitignore

Pasos

1.- Crear un arhivo app.py
2.- El archivo products.py
3.- Instalar el manejor de paquertes pip con: pip --version, pip3 --version
4.- luego instalar flask (pip3 install flask)
5.- luego correr con py app.py y listo
6.- Crear pip3 freeze > requirements.txt  # Python3, para poder trabajarlo en otro lugar

Enviarlo a otro lugar
Empaquetarlo tar -cvzf flask.restapi.tgz .

Enviarlo a otro lugar scp ./flask.restapi.tgz paul@192.168.1.56:/home/paulgit 

Docker 
#Stop all containers
docker stop $(docker ps -aq)
#Eliminar all containers 
docker rm -f $(docker ps -aq)
#listar los containers
docker ps 
docker ps -a
docker images
#Eliminar todas las imagenes
docker rmi $(docker images -q)
#construir un contenedor desde la imagen
docker build . -t docker-python-1
#correr el contenedor
docker run -d --name docker-python-1 docker-python-1


#docker-compose 
docker-compose up --build -d




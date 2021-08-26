#######Run Application on a Ubuntu Server/Steps to deploy the Web application on multiple containers.########

1 Pull files from github
git clone https://github.com/MCousins-00/Docker.git

2 Give user excute permissions.
chmod +x  installation.sh
.\installation.sh

3 Run docker-compose build in project directory and docker-compose up :
docker-compose build
docker-compose up

4. To make it HA, you can add more containers by doing the following/ or run coontainers with dockerswarm:
docker-compose up --scale app=3

#The above command allows three containers to run the web app and this can be seen in the logs the site is accessed each time (simply refresh to see which app container is      loading the nginx webserver#

5. If any changes needs to be made, ensure git is installed, for this purpose we are using Github.

6. Once a change is made, you may add it to my Public Git Repository by doing the following.

a. make change
b. git add .
c. git commit -m "Give a description of which change was made"
d. git push -u origin main
e. username: ********
f. password: ********



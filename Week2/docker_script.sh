#Pulling NGINX image
docker pull nginx

#running the nginx image and assigning a name to the container
docker run --name nginx1 -P -d nginx

#OR, to run in detached mode
docker run -d -p 80:80 --name mynginx1 nginx

#optional command: curl localhost:80 in a separate terminal

#open a separate terminal tab and run these commands

#start the container, if needed
docker start mynginx1

#docker ps shows a list of containers running
docker ps

#to log into a container
docker exec -it mynginx1 bash

#change to correct path
cd usr/share/nginx/html/

#view the default index.html - this is displayed in your browser once NGINX is succesfully up and running
cat index.html


#to append the default html code
cat >index.html
#default html doc is displayed
#exit







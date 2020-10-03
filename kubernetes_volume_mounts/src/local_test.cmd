docker stop volmountjob
docker rm volmountjob
docker build -t volmountjob -f job.dockerfile .
docker volume create --name mntazure
docker run -it --name volmountjob -v mntazure:/mnt/azure volmountjob

#bohdan
az acr login --name acrdocs
docker tag volmountjob acrdocs.azurecr.io/volmountjob:v1
docker push acrdocs.azurecr.io/volmountjob:v1

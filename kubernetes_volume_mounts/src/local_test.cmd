docker stop volmountjob
docker rm volmountjob
docker build -t volmountjob -f job.dockerfile .
docker volume create --name mntazure
docker run -it --name volmountjob -v mntazure:/mnt/azure volmountjob
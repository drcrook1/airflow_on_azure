docker stop k8volumetest
docker rm k8volumetest
docker build -t k8volumetest -f deploy.dockerfile .
docker run -it --name k8volumetest --env-file ../dev.env k8volumetest
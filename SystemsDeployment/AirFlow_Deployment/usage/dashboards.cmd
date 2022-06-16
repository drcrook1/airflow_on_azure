az aks get-credentials -n daairflow -g daairflow-rg
kubectl port-forward svc/airflow-flower 5555:5555 --namespace airflow
kubectl port-forward svc/airflow-webserver 8080:8080 --namespace airflow
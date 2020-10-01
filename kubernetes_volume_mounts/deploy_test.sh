# Assumes kubernetes cluster already deployed
az login
az aks get-credentials -n $TARGET_AKS -g $TARGET_RG


kubectl create secret generic azure-secret --from-literal=azurestorageaccountname=$STORAGE_ACCOUNT_NAME --from-literal=azurestorageaccountkey=$STORAGE_KEY
kubectl create secret docker-registry regsecret --docker-server $ACR_SERVER --docker-username $ACR_USER --docker-password $ACR_PW --docker-email faker@fake.com 2>/dev/null


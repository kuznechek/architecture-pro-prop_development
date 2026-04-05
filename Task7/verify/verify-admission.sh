#!/bin/bash
echo -e "Applying insecure manifests...\n"
kubectl apply -f insecure-manifests/

echo -e "Applying secure manifests...\n"
kubectl apply -f secure-manifests/

kubectl get pods -n audit-zone -o wide

echo -e "\nVerifying finished."
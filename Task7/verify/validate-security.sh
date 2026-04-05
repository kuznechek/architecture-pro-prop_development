#!/bin/bash

echo "Applying insecure-manifests..."
for manifest in insecure-manifests/*.yaml; do
  echo "$manifest:"
  kubectl apply -f "$manifest"
done

echo ""
echo "Applying secure-manifests..."
for manifest in secure-manifests/*.yaml; do
  echo "$manifest:"
  kubectl apply -f "$manifest"
done

echo -e "\nValidating finished."

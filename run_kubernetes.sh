#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Pre-steps
sudo alias kubectl="minikube kubectl --"

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
export dockerpath=dangquanghui/api
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run api --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
(sleep 20s && kubectl get pods)
# Step 4:
# Forward the container port to a host
kubectl port-forward api 8000:80
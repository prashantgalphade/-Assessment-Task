# This project automates the deployment of a web application on AWS using Kubernetes.
Terraform for cloud infrastructure provisioning (AWS EKS, VPC, IAM, etc.)
Docker for containerizing the web application
Kubernetes (EKS) for deploying and managing the application
Prometheus & Grafana for monitoring

# Deploy AWS Infrastructure Using Terraform
terraform init
terraform plan
terraform apply 

# After deployment, connect to EKS
aws eks update-kubeconfig --region us-east-1 --name assessment-cluster
kubectl get nodes

# Build & Push Docker Image
docker build -t my-web-app .
docker tag my-web-app assessment/my-web-app:v1
docker push assessment/my-web-app:v1

# Deploy Application to Kubernetes
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Monitoring Prometheus & Grafana
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack
helm install grafana prometheus-community/grafana








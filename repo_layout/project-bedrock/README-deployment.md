Project Bedrock 🚀

This project demonstrates deploying an AWS EKS cluster with Terraform and deploying a Kubernetes application on top of it.

🔹 Phases

1. Provision Infrastructure**  
   - Terraform scripts under `infra/` create:
     - VPC
     - EKS Cluster
     - Node Groups

2. Kubernetes Setup  
   - `namespace.yaml` → defines the app namespace.  
   - `app-deployment.yaml` → deploys the sample app.  
   - `service.yaml` → exposes the app via LoadBalancer.

3. Deployment Script 
   - `scripts/deploy.sh` automates `kubectl apply`.



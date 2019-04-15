# EKS Getting Started Guide Configuration

DISCLAIMER: All related information credits goes to Terraform Guides:

This is the full configuration from https://www.terraform.io/docs/providers/aws/guides/eks-getting-started.html

See that guide for additional information.

NOTE: This full configuration utilizes the [Terraform http provider](https://www.terraform.io/docs/providers/http/index.html) to call out to icanhazip.com to determine your local workstation external IP for easily configuring EC2 Security Group access to the Kubernetes master servers. Feel free to replace this as necessary.

## Configure kubectl to interact with EKS cluster
``` bash
aws eks update-kubeconfig --name <<eks_cluster_name>>
```
This command will update ~/.kube/config file

You can optionally use --profile and --region

## Allow WorkerNodes to join EKS cluster
``` bash
terraform output config_map_aws_auth > ~/config_map_aws_auth.yaml
```
``` bash
kubectl apply -f ~/config_map_aws_auth.yaml
```
``` bash
kubectl get nodes --watch
```
# KaaS - Rancher PoC Infra

This repository defines some Terraform infrastructure to deploy a Rancher Management Cluster (RMC) into the `cicd-dev` account. This cluster is deployed into a private subnet and is accessible via WireGuard tunnel (see below). It is intended to be used to test out Rancher as a possible option for our KaaS cluster management tool.

## Enable Rancher Access
`rancher/aws/infra.tf` defines the `rancher_sg` Security Group which restricts access to the RMC. You will need to add your WireGuard Tunnel IP address to the `ingress` rule to get access to the RMC UI. Once these changes are applied, you can access the UI at the below link.

## Rancher Management Cluster
http://rancher.10.202.102.0.sslip.io/dashboard/home

## SSH to Rancher Server (Garrett holds this key)
`ssh -i ./rancher/aws/id_rsa ec2-user@10.202.102.0`
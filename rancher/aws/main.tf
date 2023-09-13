terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "chainalysis-infra-cicd-dev"
    region         = "eu-west-1"
    key            = "rancher-poc/state.tfstate"
    dynamodb_table = "infra-lock-cicd-dev"
  }

  required_version = ">= 1.0"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::048347064338:role/cicd-dev-admin"
    session_name = "RancherPOC"
  }
  region     = var.aws_region
}

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
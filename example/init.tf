/*
The deploy_example.sh script in this directory consumes variables in vars.sh and
then initializes Terraform. The values you see below will be over written by the
deploy_example.sh script and therefore do not need to be updated.
*/
terraform {
  required_version = ">= 0.13"
  backend "s3" {
    bucket = "serverless-terraform-state-file-s3-6-18"
    key    = "./terraform.tfstate"
    encrypt = true
    dynamodb_table = "serverless-jenkins-terraform-lock"
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

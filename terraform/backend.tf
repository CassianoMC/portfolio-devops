terraform {
  backend "s3" {
    bucket         = "portfolio-devops-tfstate-cassianomc"
    key            = "prod/terraform.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "portfolio-devops-terraform-lock"
    encrypt        = true
  }
}

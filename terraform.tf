terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
        source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "enzo-0105"
    workspaces {
      name = "jiggy"
    }
  }
}

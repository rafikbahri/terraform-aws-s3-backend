terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "terraform_backend" {
  source = "../../"
  tags = {
    Project     = var.project_name
    Environment = var.environment
    Example     = "basic"
    ManagedBy   = "terraform"
  }
}
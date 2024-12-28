terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "CaptainTacticus-01"
  
}

#Create RDS DB using Terraform

resource "aws_db_instance" "captaintacticusrds" {
    engine = "mysql"
    engine_version = "8.0.37"
    instance_class = "db.m5.large"
    allocated_storage = 20
    storage_type = "gp2"
    identifier = "captaintacticusdb"
    username = "captainTacticus01"
    password = "m05X3(qM"
    publicly_accessible = false
    skip_final_snapshot = true

    tags = {
      "name" = "Timirdsdb"
    }

}
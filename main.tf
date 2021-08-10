terraform {
    required_version = "~> 1.0.3" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        #region = "us-east-1" 
        profile = "default"
	}

resource "aws_instance" "shamiliinfo" {
	ami = "ami-0b0af3577fe5e3532" 
	instance_type = "t2.micro"
}

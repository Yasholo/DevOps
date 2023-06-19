terrform {
	required_providers {
	  aws = {
	    source = "hashicorp/aws"
	    version = "-> 4.0"
	  }
	}
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_vpc" "example"{
	instance_type = "t2.micro"
	cidr_block = "10.0.0.0/16"
	ami = var.image_id
}




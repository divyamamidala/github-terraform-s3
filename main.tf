provider "aws" {
region    = "us-east-2"
}

resource "aws_instance" "example" {
ami    = "ami-089a545a9ed9893b6"
instance_type = "t2.micro"

tags={
name= "terra-instance"
}
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state-uppppppp"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"
  }
}

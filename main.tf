provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "assessment-cluster"

  vpc_config {
    subnet_ids = ["subnet-0a1b2c3d4e5f67890", "subnet-0123456789abcdef0"]
  }

 tags = {
    Name = "assessment-vpc"
  }
}

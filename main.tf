provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "assessment-cluster"

  vpc_config {
    subnet_ids = ["subnet-0a1b2c3d4e5f06182", "subnet-02376afcbef0"]
  }

 tags = {
    Name = "assessment-vpc"
  }
}

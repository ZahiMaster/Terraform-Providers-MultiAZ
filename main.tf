provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

terraform {
  beckend "s3" {
    #Meu bucket para guardar o tfstate !@@@@
    bucket = "bucket-terraform-zahi-master"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
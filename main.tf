provider "aws" {
    region = "us-east-1"
}

provider "aws" {
    alias = "west"
    region = "us-west-2"
}

terraform {
  backend "s3" {
    #Meu bucket para guardar o tfstate !@@@@
    bucket = "bucket-terraform-zahi-master"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
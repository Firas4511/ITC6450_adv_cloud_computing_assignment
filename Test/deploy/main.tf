terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"     
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = var.region
  access_key = "${var.accesskey}"
  secret_key = "${var.secretkey}"
}

module "s3-website" {
  source = "../site"
  bucket_name = "first-s3-static-website"
}

module "jenkins" {
  source = "../jenkins"
}

module "docker" {
  source = "../docker"
}

output "website_link" {
  value = module.s3-website.website_link
}

output "jenkins_link" {
  value = module.jenkins.jenkins_link
}
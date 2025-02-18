terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

resource "aws_instance" "ec2"{
    ami=var.ami_id
    instance_type=var.instance_type
    subnet_id=aws_subnet.subnet1.id
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "vpc" {
    cidr_block = var.cidr
    
}

resource "aws_subnet" "subnet1" {
    vpc_id= aws_vpc.vpc.id
    cidr_block = var.subnet01
    availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet2" {
    vpc_id= aws_vpc.vpc.id
    cidr_block = var.subnet02
    availability_zone = "us-east-1b"
}
 

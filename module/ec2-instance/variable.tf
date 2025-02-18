variable "cidr"{
    description = "CIDR block for the VPC"
    default = "10.0.0.0/24"
}

variable "instance_type"{
    description = "Instance type for the EC2"
    default = "t2.micro"
}

variable "ami_id" {
    description = "AMI ID for the EC2"
    default="ami-053a45fff0a704a47"
}

variable "subnet01"{

    description = "CIDR block for the subnet1"
    default = "10.0.1.0/24"
}

variable "subnet02"{
    description = "CIDR block for the subnet2"
    default = "10.0.2.0/24"
}


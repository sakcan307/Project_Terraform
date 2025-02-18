provider  "aws"{
    region = "us-east-1"
}

module "ec2-instance" {
    source = "./module/ec2-instance"
    ami_id = "ami-053a45fff0a704a47"
    instance_type = "t2.micro"
}
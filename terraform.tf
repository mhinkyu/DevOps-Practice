provider "aws" { 
        region = "us-west-2" 
} 

resource "aws_instance" "first_instance" { 
        ami = "ami-017fecd1353bcc96e" 
        instance_type = "t2.micro"
        vpc_security_group_ids = [
    "sg-031e810705859e03e"
    ]
        user_data = "${file("install-tools.sh")}"
        subnet_id = "subnet-05bf5c1e25a5a6ff2"
        key_name = "vockey"
        tags = { 
         Name = "DevOps-V1.0.0"
        }
}
resource "aws_s3_bucket" "b" {
    bucket = "devops-bucket-mkk"
    acl = "public"
    region = "us-west-2"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}

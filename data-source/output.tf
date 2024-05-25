output "ami_id" {
value = data.aws_ami.ami_id.id
}

output "ami_name" {
    value = data.aws_ami.ami_id.name
  
}

output "aws_vpc" {

    value = data.aws_vpc.default-vpc.id  
}
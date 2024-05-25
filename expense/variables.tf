#Ec2 -instance

variable "instance_names" {
    default = ["DB", "Backend", "Frontend"]
    type= list(string)  
}
variable "instance_type" {
    default = "t3.micro"
    type = string
}


variable "ami_imageId" {
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"

}

variable "common_tags" {
  default = {
    Project = "Expense"
    Environment = "Dev"
    Terraform = "true"
  }

}

#security group

variable "sg_name" {
    default = "allow_ssh"
  
}
variable "sg_description" {
  
  default = "Allowing port 22"
}

variable "ssh_port" {
    default = 22
  
}
variable "allowed_cidr" {
   type = list(string)
    default = ["0.0.0.0/0"]
  
}

variable "protocol" {
    default = "tcp"
  }

#r53 
variable "zone_id" {
    default = "Z05565782P7G8564J8J8E"
}

variable "domain_name" {
default = "harishbalike.online"

}


variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58" #optional
    description = "RHEL-9 AMI ID" #optional
  
}

variable "instance_type" {

    default = "t3.micro"
    type = string
  
}

variable "sg_name" {
    default  = "allow_ssh"
      
}

variable "ssh_port" {
    default = 22
      
}

variable "protocol" {

    default = "tcp"
  
}

variable "allow_cidr" {
    type = list(string)
 default = ["0.0.0.0/0"]

 }


 variable "tags" {

    default = {
        project = "Expense"
        Name = "DB"
        Envinroment = "Dev"
        
    }
   
 }
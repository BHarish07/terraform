variable "ami_id" {
    default = "ami-090252cbe067a9e58"
  
}
variable "sg_ids" {
    default = ["sg-09873981938f7b555"]
  
}
variable "instance_type" {
      default = "t3.micro"
}

variable "tags" {

    default = {
        Name = "Aws-ec2"
        Teraform = "true"
    }  
}
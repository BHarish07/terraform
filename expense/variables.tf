variable "instance_name" {
    default = ["DB", "backend", "Frontend"]
    type= list(string)  
}
variable "instance_type" {
    default = "t3.micro"
    type = string
}


variable "ami_imageId" {
    default = "ami-090252cbe067a9e58"
  
}
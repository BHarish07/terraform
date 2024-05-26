variable "instance_type" {

    default = {
        Dev = "t3.micro"
        Prod = "t3.small"
    }
  
}
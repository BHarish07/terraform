
variable "instance_names" {

    # default = {
    #     db = "t3.small"
    #     backend = "t3.micro"
    #     frontend = "t3.micro"
    # }
  
}

variable "common_tags" {
  default = {
    Project_name= "Expense"
    Terraform = true
  }
}

variable "environment" {
      
}

variable "domain_name" {
  
  default = "harishbalike.online"
}

variable "zone_id" {
  default = "Z05565782P7G8564J8J8E"
}
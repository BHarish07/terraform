locals {

  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-0215142c121016caa"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  tags= {
    Name ="Locals"
  }


}
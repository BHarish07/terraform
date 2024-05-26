
resource "aws_instance" "DB" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = ["sg-09873981938f7b555"]

 }
resource "aws_instance" "DB" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = var.tags

 }
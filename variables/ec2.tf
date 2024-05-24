#first we need to create a security group 

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = "Allow ssh all inbound traffic and all outbound traffic"
  #vpc will be default 

  tags = var.tags
}
resource "aws_security_group" "allow_all_traffic" {
  # ... other configuration ...

  
  ingress {
    from_port        =var.ssh_port
    to_port          =var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.allow_cidr
      }
      
  egress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = "-1"
    cidr_blocks      = var.allow_cidr
      }
}


resource "aws_instance" "DB" {
  ami           = var.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]

  tags = {
    Name = "DB"
  }
}
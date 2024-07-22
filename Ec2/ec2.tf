#first we need to create a security group 

resource "aws_security_group" "allow_ssh" {
  name        = "allow_all_traffic"
  description = "Allow ssh all inbound traffic and all outbound traffic"
  #vpc will be default 

  tags = {
    Name = "allow_ssh"
    CreatedBy =  "Harish"
    
  }
}
resource "aws_security_group" "allow_all_traffic" {
  # ... other configuration ...

  
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
      }
      
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
      }
}


resource "aws_instance" "WS" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]

  tags = {
    Name = "Workstation"
  }
}
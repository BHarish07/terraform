#first we need to create a security group 

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
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
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
      }
      
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
      }
}


resource "aws_instance" "DB" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]

  tags = {
    Name = "DB"
  }
}
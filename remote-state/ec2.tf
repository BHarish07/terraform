
resource "aws_instance" "DB" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-06f9ec2da21718de5"]

  tags = {
    Name = "DB"
  }
}
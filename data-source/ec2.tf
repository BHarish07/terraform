

resource "aws_instance" "DB" {
  ami           = data.aws_ami.ami_id.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0215142c121016caa"]

  tags = {
    Name = "DB"
  }
}
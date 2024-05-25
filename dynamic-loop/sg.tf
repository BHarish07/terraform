
resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Allowing 22 , 80 ,3306 and 8080 ports access"
  #vpc will be default 

  tags = {
    Name = "allow_ssh"
    CreatedBy =  "Harish"
    
  }
}
resource "aws_security_group" "allow_all_traffic" {
  # ... other configuration ...

  dynamic "ingress" {
    for_each = var.inbound_traffic
     content {
    from_port        = ingress.value["port"]
    to_port          = ingress.value["port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ingress.value["allowed_cidr"]
      }
  }
 
      
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
      }
}

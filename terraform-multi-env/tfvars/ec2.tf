resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami           = data.aws_ami.ami_id.id
  instance_type = each.value
  vpc_security_group_ids = ["sg-09873981938f7b555"]

  tags = merge(
    var.common_tags, {
    Name = "${each.key}"
    Module ="${each.key}"
    Environment = var.environment
    }
  )
}

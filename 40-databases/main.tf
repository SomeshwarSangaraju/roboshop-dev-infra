resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.bastion_sg_id]
  subnet_id = local.database_subnet_ids
  
tags = merge (
  local.common_tags,
  {
      Name = "${local.common_suffix_name}-mongodb" # roboshop-dev-mongodb
  }
)
}

resource "aws_instance" "catalogue" {
  ami           = local.ami_id 
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
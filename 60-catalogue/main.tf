resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.joindevops.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
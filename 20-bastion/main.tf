resource "aws_instance" "bastion_host" {
  ami           = local.ami_id
  instance_type = "t3.micro"

   tags = merge (
        local.common_tags,
        {
            Name = "${var.project_name}-${var.environment}-bastion"
        }
    )
}
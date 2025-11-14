resource "aws_lb" "backend_alb" {
  name               = "${local.common_suffix_name}-backend-alb" #roboshop-dev-backend-alb
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  subnets            = [local.private_subnet_ids]

  enable_deletion_protection = true

  tags = merge (
        local.common_tags,
        {
            Name = "${var.project_name}-${var.environment}-backend_alb"
        }
    )
}
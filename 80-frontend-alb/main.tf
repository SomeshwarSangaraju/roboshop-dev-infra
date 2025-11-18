resource "aws_lb" "frontend_alb" {
  name               = "${local.common_suffix_name}-backend-alb"  #roboshop-dev-backend-alb
  internal           = false
  load_balancer_type = "application"
  security_groups    = local.frontend_alb_sg_id
  subnets            = [local.public_subnet_ids]

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.lb_logs.id
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}
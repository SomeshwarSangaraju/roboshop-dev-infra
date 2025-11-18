locals{
    common_suffix_name="${var.project_name}-${var.environment}"
    frontend_alb_sg_id=data.aws_ssm_parameter.frontend_alb_sg_id.value
    public_subnet_ids = split("," , data.aws_ssm_parameter.public_subnet_ids.value)
    frontend_alb_certificate_arn = data.aws_ssm_parameter.frontend_alb_certificate_arn.value
    common_tags={
        project_name="${var.project_name}"
        environment="${var.environment}"
        Terraform = "true"
    }
}

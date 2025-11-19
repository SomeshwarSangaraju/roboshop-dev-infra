locals{
    ami_id=data.aws_ami.joindevops.id
    common_suffix_name= "${var.project_name}-${var.environment}"
    catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
    private_subnet_id = split("," , data.aws_ssm_parameter.private_subnet_ids.value)[0]
    private_subnet_ids = split("," , data.aws_ssm_parameter.private_subnet_ids.value)
    vpc_id = data.aws_ssm_parameter.vpc_id.id
    backend_alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
    common_tags={
        Project="${var.environment}"
        Environment="${var.environment}"
        Terraform ="true"
    }
}
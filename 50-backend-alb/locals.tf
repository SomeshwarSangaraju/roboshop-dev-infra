locals{
    common_suffix_name="${var.project_name}-${var.environment}"
    backend_alb_sg_id= data.aws_ssm_parameter.backend_alb.id
    private_subnet_ids= split("," , data.aws_ssm_parameter.public_subnet_ids.value)
    common_tags={
        project_name= "${var.project_name}"
        environment= "${var.environment}"
        terraform= "true"
    }
}
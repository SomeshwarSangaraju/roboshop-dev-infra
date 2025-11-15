locals{
    common_suffix_name="${var.project_name}-${var.environment}"
    bastion_sg_id=data.aws_ssm_parameter.bastion_sg_id.value
    database_subnet_ids=data.aws_ssm_parameter.database_subnet_ids.value
    ami_id=data.aws_ami.joindevops.id
    common_tags={
        project_name="${var.project_name}"
        environment="${var.environment}"
        terraform= true
    }
}
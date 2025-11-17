locals{
    ami_id=data.aws_ami.joindevops.id
    common_suffix_name= "${var.project_name}-${var.environment}"
    common_tags={
        project_name="${var.environment}"
        environment="${var.environment}"
    }
}
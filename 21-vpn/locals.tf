locals{
    common_suffix_name = "${var.project_name}-${var.environment}"
    ami_id = data.aws_ami.openvpn.value
    public_subnet_ids =split("," , data.aws_ssm_parameter.public_subnet_ids.value)
    public_subnet_id =split("," , data.aws_ssm_parameter.public_subnet_id.value)[0]
    openvpn_sg_id = data.aws_ssm_parameter.openvpn_sg_id.value
    common_tags={
        Project = var.project_name
        Environment = var.environment
        Terraform = "true"
    }
}
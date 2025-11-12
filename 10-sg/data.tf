data "aws_ssm_parameter" "sg" {
   name = "/${var.project_name}/${var.environment}/vpc_id"
}
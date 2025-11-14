locals{
    mongodb_sg_id= data.aws_ssm_parameter.mongodb_sg_id
    bastion_sg_id= data.aws_ssm_parameter.bastion_sg_id
    redis_sg_id= data.aws_ssm_parameter.redis_sg_id
    rabbitmq_sg_id= data.aws_ssm_parameter.rabbitmq_sg_id
    mysql_sg_id= data.aws_ssm_parameter.mysql_sg_id
    catalogue_sg_id= data.aws_ssm_parameter.catalogue_sg_id
    user_sg_id= data.aws_ssm_parameter.user_sg_id
    cart_sg_id= data.aws_ssm_parameter.cart_sg_id
    shipping_sg_id= data.aws_ssm_parameter.shipping_sg_id
    payment_sg_id= data.aws_ssm_parameter.payment_sg_id
    backend_alb_sg_id= data.aws_ssm_parameter.backend_alb_sg_id
    frontend_alb_sg_id= data.aws_ssm_parameter.frontend_alb_sg_id
    frontend_sg_id= data.aws_ssm_parameter.frontend_alb_sg_id
}
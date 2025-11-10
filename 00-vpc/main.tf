
module "aws_vpc"{
    
    source = "git::https://github.com/SomeshwarSangaraju/terraform-aws-vpc.git?ref=main"
    
    vpc_cidr=var.vpc_cidr
    instance_tentency=var.instance_tentency
    project_name =var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    #public subnet
    public_subnet_cidr = var.public_subnet_cidr

    #private subnet
    private_subnet_cidr = var.private_subnet_cidr

    #database subnet
    database_subnet_cidr = var.database_subnet_cidr

    isPeering = var.is_Peering_required
}
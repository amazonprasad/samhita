module "roboshop" {
    source = "../terraform-vpc"
    project_name  = var.project_name
    environment_name = var.environment_name
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    #public subnet
    public_subnets_cidr = var.public_subnets_cidr
    #pribate_subnet
    private_subnets_cidr = var.private_subnets_cidr

    #database subnet
    database_subnets_cidr = var.database_subnets_cidr

    #peering
    is_peering_required = var.is_peering_required
}
module "mysql_sg"{
    source = "../terraform-mod-securitygroup"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    common_tags = var.common_tags
    sg_description = "created for mysql instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}
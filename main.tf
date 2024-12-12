module "vpc" {
  source          = "./vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  vpc_name        = var.vpc_name
}

module "ec2" {
  source          = "./ec2"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  public_subnet_id = module.vpc.public_subnet_id
  ec2_name        = var.ec2_name
}

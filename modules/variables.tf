#Create vpc
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "public_subnet_az1_cidr" {}
variable "public_subnet_az2_cidr" {}
variable "private_subnet_az1_cidr" {}
variable "private_subnet_az2_cidr" {}

# create route53
variable "domain_name" {}
variable "subject_alternative_names" {}
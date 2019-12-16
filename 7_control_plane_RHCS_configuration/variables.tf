####### AWS Access and Region Details #############################
variable "aws_region" {
  default  = "us-east-2"
  description = "One of us-east-2, us-east-1, us-west-1, us-west-2, ap-south-1, ap-northeast-2, ap-southeast-1, ap-southeast-2, ap-northeast-1, us-west-2, eu-central-1, eu-west-1, eu-west-2, sa-east-1"
}

variable "aws_azs" {
  type  = "list"
  description = "The availability zone letter appendix you want to deploy to in the selected region "
  default = ["a", "b", "c"]
}

variable "default_tags" {
    default = {}
}

####### AWS Deployment Details ####################################
# SSH Key
variable "ami" { default = "" }

variable "infrastructure_id" {
  default = ""
}

variable "clustername" { default = "ocp4" }

variable "private_vpc_id" { default = "" }

# Subnet Details
variable "private_vpc_private_subnet_ids" {
  description = "List of subnet ids"
  type        = "list"
  default     = []
}

variable "domain" {
    default = "example.com"
}

variable "control_plane" {
    default = {
        count = "3"
        type = "m4.xlarge"
        disk = "120"
    }
}

variable "worker" {
    default = {
        count = "3"
        type = "m4.large"
        disk = "120"
    }
}

variable "openshift_pull_secret" {
    default = "./openshift_pull_secret.json"
}

variable "use_worker_machinesets" {
  default = true
}

variable "ocp_control_plane_security_group_id" {
  default = ""
}

variable "ocp_worker_security_group_id" {
  default = ""
}

variable "ocp_master_instance_profile_id" {
  default = ""
}

variable "ocp_worker_instance_profile_id" {
  default = ""
}

variable "ocp_control_plane_lb_int_arn" {
  default = ""
}
variable "ocp_control_plane_lb_int_22623_tg_arn" {
  default = ""
} 

variable "ocp_control_plane_lb_int_6443_tg_arn" {
  default = ""
} 

variable "ocp_route53_private_zone_id" {
  default = ""
}

variable "master_ign_64" {
  default = ""
}

variable "worker_ign_64" {
  default = ""
}
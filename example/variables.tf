variable route53_domain_name {
  type        = string
  description = "The domain"
  default = "onewave.click"
}

variable route53_zone_id {
  type        = string
  description = <<EOF
The route53 zone id where DNS entries will be created. Should be the zone id
for the domain in the var route53_domain_name.
EOF
  default = "Z10202993SDSAWZ81W0QM"
}

variable jenkins_dns_alias {
  type        = string
  description = <<EOF
The DNS alias to be associated with the deployed jenkins instance. Alias will
be created in the given route53 zone
EOF
  default     = "jenkins-controller"
}

variable vpc_id {
  type        = string
  description = "The vpc id for where jenkins will be deployed"
  default = "vpc-01665f67676ca4886"
}

variable efs_subnet_ids {
  type        = list(string)
  description = "A list of subnets to attach to the EFS mountpoint. Should be private but is public"
  default = ["subnet-049667421c06b9a49","subnet-08664fb31636daec3"]
}

variable jenkins_controller_subnet_ids {
  type        = list(string)
  description = "A list of subnets for the jenkins controller fargate service. Should be private but is public"
  default = ["subnet-049667421c06b9a49","subnet-08664fb31636daec3"]
}

variable alb_subnet_ids {
  type        = list(string)
  description = "A list of subnets for the Application Load Balancer"
  default = ["subnet-049667421c06b9a49","subnet-08664fb31636daec3"]
}
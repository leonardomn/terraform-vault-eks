locals {
  worker_groups = [
    {
      name                          = "worker1"
      instance_type                 = "t2.medium"
      asg_desired_capacity          = 2
      additional_security_group_ids = module.main.securitygroup_id
    }
  ]
}
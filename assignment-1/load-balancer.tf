data "aws_instances" "all_running_instances" {
  instance_state_names = ["running"]
  depends_on           = [module.ec2_instance_1, module.ec2_instance_2]
}

locals {
  ec2_instance_ids = data.aws_instances.all_running_instances.ids
}

resource "aws_security_group" "lb_security_group" {
  vpc_id = module.vpc.vpc_id
  name   = "Load Balancer Group"
  egress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]

  ingress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = ""
      from_port        = 80
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 80
    }
  ]
}

module "loadbalancer" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = "cap-dev-alb"

  load_balancer_type = "application"

  vpc_id          = module.vpc.vpc_id
  subnets         = module.vpc.public_subnets
  security_groups = [aws_security_group.lb_security_group.id]

  target_groups = [{
    backend_protocol = "HTTP"
    backend_port     = 80
    target_type      = "instance"
    # FIX ME: Explore dynamic blocks to generate repeatable targets
    targets = {
      first_instance = {
        target_id = data.aws_instances.all_running_instances.ids[0]
        port      = 80
      }
      second_instance = {
        target_id = data.aws_instances.all_running_instances.ids[1]
        port      = 80
      }
    }
  }]


  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = var.default_tags
}

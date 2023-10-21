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

resource "aws_lb" "instances_alb" {
  name                             = "instances-load-balancer"
  security_groups                  = [aws_security_group.lb_security_group.id]
  subnets                          = module.vpc.public_subnets
  enable_cross_zone_load_balancing = true
}

resource "aws_alb_target_group" "target_group" {
  name     = "ec2-instances"
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.vpc.vpc_id
  health_check {
    enabled  = true
    protocol = "HTTP"
    port     = 80
    path     = "/"
    timeout  = 5
  }
}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.instances_alb.id
  port              = 80
  default_action {
    target_group_arn = aws_alb_target_group.target_group.id
    type             = "forward"
  }
}

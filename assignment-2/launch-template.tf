resource "aws_security_group" "instance_security_group" {
  vpc_id = module.vpc.vpc_id
  name   = "EC2-Instance Group"
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
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    },
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

resource "aws_launch_template" "instances_launch_template" {
  name          = "instances-launch-template"
  instance_type = "t3.micro"
  image_id      = "ami-00a9282ce3b5ddfb1"
  user_data     = filebase64("user-data.tpl")
  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.instance_security_group.id]
  }
}

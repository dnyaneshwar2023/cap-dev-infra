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


module "ec2_instance_1" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  name                        = "EC2-nginx-1"
  ami                         = var.instance_ami
  vpc_security_group_ids      = [aws_security_group.instance_security_group.id]
  instance_type               = var.instance_type
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = var.default_tags

  user_data = file("init-script.tpl")

}

module "ec2_instance_2" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  name                   = "EC2-nginx-2"
  ami                    = var.instance_ami
  vpc_security_group_ids = [aws_security_group.instance_security_group.id]

  instance_type               = var.instance_type
  subnet_id                   = module.vpc.public_subnets[1]
  associate_public_ip_address = true

  tags = var.default_tags

  user_data = file("init-script.tpl")

}

module "ec2_instance_3" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  name                   = "EC2-nginx-2"
  ami                    = var.instance_ami
  vpc_security_group_ids = [aws_security_group.instance_security_group.id]

  instance_type               = var.instance_type
  subnet_id                   = module.vpc.private_subnets[0]
  associate_public_ip_address = true

  tags = var.default_tags

  user_data = file("init-script.tpl")

}


module "ec2_instance_4" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  name                   = "EC2-nginx-2"
  ami                    = var.instance_ami
  vpc_security_group_ids = [aws_security_group.instance_security_group.id]

  instance_type               = var.instance_type
  subnet_id                   = module.vpc.private_subnets[1]
  associate_public_ip_address = true

  tags = var.default_tags

  user_data = file("init-script.tpl")

}

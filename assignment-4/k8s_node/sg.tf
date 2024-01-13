data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["defaut-vpc"]
  }
}

resource "aws_security_group" "node_sg" {
  name_prefix = "k8s_node_sg_${var.person_name}"
  description = "SG for k8s_node"
  vpc_id = data.aws_vpc.vpc.id

  lifecycle {
    create_before_destroy = true
  }

  timeouts {
    delete = "10m"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_access" {
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  to_port = 22

  security_group_id = aws_security_group.node_sg.id
}

resource "aws_vpc_security_group_egress_rule" "allow_outgoing_ipv4" {
  ip_protocol = "-1"
  cidr_ipv4 = "0.0.0.0/0"

  security_group_id = aws_security_group.node_sg.id
}

resource "aws_vpc_security_group_egress_rule" "allow_outgoing_ipv6" {
  ip_protocol = "-1"
  cidr_ipv6 = "::/0"

  security_group_id = aws_security_group.node_sg.id
}

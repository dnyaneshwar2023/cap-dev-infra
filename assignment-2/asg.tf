resource "aws_autoscaling_group" "autoscaler" {
  name             = "auto scaling group"
  max_size         = 5
  min_size         = 1
  desired_capacity = 2

  vpc_zone_identifier = module.vpc.public_subnets
  launch_template {
    id = aws_launch_template.instances_launch_template.id
  }
  target_group_arns = [aws_alb_target_group.target_group.arn]
}

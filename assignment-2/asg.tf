resource "aws_autoscaling_group" "autoscaler" {
  name             = "auto scaling group"
  max_size         = 5
  min_size         = 1
  desired_capacity = 2

  vpc_zone_identifier       = module.vpc.public_subnets
  health_check_type         = "ELB"
  health_check_grace_period = 60
  launch_template {
    id = aws_launch_template.instances_launch_template.id
  }
  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 60
      instance_warmup        = 300
    }
  }
  target_group_arns = [aws_alb_target_group.target_group.arn]
}


resource "aws_autoscaling_policy" "scale_out_policy" {
  name                   = "instances-scale-up-policy"
  autoscaling_group_name = aws_autoscaling_group.autoscaler.name
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
}

resource "aws_autoscaling_policy" "scale_in_policy" {
  name                   = "instances-scale-down-policy"
  autoscaling_group_name = aws_autoscaling_group.autoscaler.name
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
}

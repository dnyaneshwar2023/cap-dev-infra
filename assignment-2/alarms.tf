resource "aws_cloudwatch_metric_alarm" "scale_out_alarm" {
  alarm_name          = "ec2-instances-scale-out"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "RequestCountPerTarget"
  namespace           = "AWS/ApplicationELB"
  period              = "10"
  statistic           = "Sum"
  threshold           = "20"

  dimensions = {
    TargetGroup = aws_alb_target_group.target_group.arn_suffix
  }

  alarm_actions = [
    aws_autoscaling_policy.scale_out_policy.arn
  ]
}

resource "aws_cloudwatch_metric_alarm" "scale_in_alarm" {
  alarm_name          = "ec2-instances-scale-in"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "RequestCountPerTarget"
  namespace           = "AWS/ApplicationELB"
  period              = "10"
  statistic           = "Sum"
  threshold           = "1"

  dimensions = {
    TargetGroup = aws_alb_target_group.target_group.arn_suffix
  }

  alarm_actions = [
    aws_autoscaling_policy.scale_in_policy.arn
  ]
}

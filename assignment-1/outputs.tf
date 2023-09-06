output "vpc_id" {
  value = module.vpc.vpc_id
}

output "load_balancer_dns" {
  value = module.loadbalancer.lb_dns_name
}

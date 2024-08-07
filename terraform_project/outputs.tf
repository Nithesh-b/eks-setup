output "vpc_id" {
  value = aws_vpc.main.id
}

output "eks_cluster_id" {
  value = aws_eks_cluster.main.id
}

output "fargate_profile_id" {
  value = aws_eks_fargate_profile.main.id
}

output "load_balancer_dns" {
  value = aws_lb.main.dns_name
}

output "route53_zone_id" {
  value = aws_route53_zone.main.zone_id
}

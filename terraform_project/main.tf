resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_eks_cluster" "main" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks.arn

  vpc_config {
    subnet_ids = aws_subnet.main[*].id
  }
}

resource "aws_eks_fargate_profile" "main" {
  cluster_name           = aws_eks_cluster.main.name
  fargate_profile_name   = var.fargate_profile_name
  pod_execution_role_arn = aws_iam_role.fargate.arn

  selector {
    namespace = "default"
  }
}

resource "aws_lb" "main" {
  name               = "eks-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb.id]
  subnets            = aws_subnet.main[*].id
}

resource "aws_route53_zone" "main" {
  name = var.domain_name
}

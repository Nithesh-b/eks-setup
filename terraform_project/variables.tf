variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "eks-cluster"
}

variable "fargate_profile_name" {
  description = "The name of the Fargate profile"
  type        = string
  default     = "fargate-profile"
}

variable "domain_name" {
  description = "The domain name for Route 53"
  type        = string
  default     = "example.com"
}

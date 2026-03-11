variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "cloud-native-saas"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "my-cluster"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.28"
}

variable "desired_size" {
  description = "Desired number of nodes"
  type        = number
  default     = 3
}

variable "max_size" {
  description = "Maximum number of nodes"
  type        = number
  default     = 10
}

variable "min_size" {
  description = "Minimum number of nodes"
  type        = number
  default     = 2
}

variable "subnet_ids" {
  description = "Subnet IDs for the cluster"
  type        = list(string)
}

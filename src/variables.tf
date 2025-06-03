variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "The AWS region to deploy resources in"
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "The AWS region to deploy resources in"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "The AWS region to deploy resources in"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "The AWS region to deploy resources in"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "The AWS region to deploy resources in"
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "The AWS region to deploy resources in"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "The AWS region to deploy resources in"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_type" {
  description = "The AWS region to deploy resources in"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "The AWS region to deploy resources in"
  type        = map(any)
  nullable    = false
}
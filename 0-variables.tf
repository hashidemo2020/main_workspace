variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}

variable "project_name" {
    description = "the name for this project or application"
}

variable "instance_type" {
    description = "the AWS instance type"
}

variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}


##OPTIONAL VARIABLES
variable "tenancy" {
  description = "The tenancy of the instance. Must be one of: default or dedicated."
  default     = "default"
}
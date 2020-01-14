variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}

variable "project_name" {
    description = "the name for this project or application"
}


variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

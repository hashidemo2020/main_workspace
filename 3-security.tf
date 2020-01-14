resource "aws_security_group" "lc_security_group" {
  name_prefix = var.project_name
  description = "Security group for the ${var.project_name} launch configuration"
  vpc_id      = aws_vpc.main.id

  # aws_launch_configuration.launch_configuration in this module sets create_before_destroy to true, which means
  # everything it depends on, including this resource, must set it as well, or you'll get cyclic dependency errors
  # when you try to do a terraform destroy.
  lifecycle {
    create_before_destroy = true
  }

  tags = merge(
    {
      "Name" = var.project_name
    },
    var.default_tags
  )
}
module "ec2-instance" {
  source  = "app.terraform.io/fidelity_tfe_demo/ec2-instance/aws"
  version = "2.12.0"

  name                   = var.project_name
  instance_count         = 1

  ami                    = "ami-03fe4ab7cbc8fe59d"
  instance_type          = "t2.micro"
  key_name               = "Prakash Test"
  monitoring             = true
  #vpc_security_group_ids = [${aws_security_group.lc_security_group.id}]
  subnet_id              = aws_subnet.main.id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
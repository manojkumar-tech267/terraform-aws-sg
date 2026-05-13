resource "aws_security_group" "main" {
  name        = local.sg_name
  description = local.sg_description
  vpc_id      = var.vpc_id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = local.sg_final_tags
}
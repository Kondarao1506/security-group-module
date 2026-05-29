resource "aws_security_group" "roboshopsg" {
  count = length(var.component)
  name        = "${local.common_name}-${var.component[count.index]}" #roboshop-dev-component-sg 
  description = "Allow TLS inbound traffic and all outbound traffic ${local.common_name}-${var.component[count.index]}" #roboshop-dev-component-sg
  vpc_id      = var.vpc_id 

  tags = {
    Name = "${local.common_name}-${var.component[count.index]}" #roboshop-dev-component-sg
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
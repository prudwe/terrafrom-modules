resource "aws_db_instance" "example" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  skip_final_snapshot  = true

  vpc_security_group_ids = [aws_security_group.example.id]

  tags = var.tags
}

resource "aws_security_group" "example" {
  name        = "rds-sg"
  description = "Security group for RDS"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
  }
}



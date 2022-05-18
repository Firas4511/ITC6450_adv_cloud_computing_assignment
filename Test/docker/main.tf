resource "aws_instance" "Docker-server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.DockerSG.id]
  key_name               = var.ssh_key_name
  user_data	             = file("../docker/file.sh")
  
  tags = {
    Name = "Docker_Server"
  }
}

resource "aws_security_group" "DockerSG" {
  name = "Docker_SG"

  ingress {
    from_port   = var.port_http
    to_port     = var.port_http
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.port_ssh
    to_port     = var.port_ssh
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
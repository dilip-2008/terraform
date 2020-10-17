resource "aws_instance" "test2" {
  ami               = var.ami_name
  instance_type     = "t3.micro"
  availability_zone = "us-east-2c"
  tags = {
    Name = "old-Instance"
  }
}

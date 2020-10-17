resource "aws_instance" "testdb" {
  ami               = "ami-03f4c416f489586a3"
  instance_type     = "t2.micro"
  availability_zone = "us-east-2c"
  tags = {
    Name = "db-Instance"
  }
}

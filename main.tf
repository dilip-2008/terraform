provider "aws" {
  region = "us-east-2"
}

module "web" {
  source = "./webserver"
}
module "db" {
  source = "./dbserver"

}
resource "aws_instance" "test3" {
  ami               =  "ami-027cab9a7bf0155df"
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  tags = {
    Name = "terraform"
  }
}


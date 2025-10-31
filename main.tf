provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "myfetcher" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-ecs-hvm-*-kernel-6.1-arm64"]
  }

  filter {
    name   = "architecture"
    values = ["arm64"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myfetcher.image_id
  instance_type = "t4g.micro"
}

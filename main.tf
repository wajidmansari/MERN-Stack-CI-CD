provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "mern_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "MERNStackServer"
  }
}

output "instance_ip_addr" {
  value = aws_instance.mern_server.public_ip
}

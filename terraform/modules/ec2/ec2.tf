resource "aws_instance" "first_instance" {
  ami = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
}

output "ip" {
  value = aws_instance.first_instance.public_ip
}
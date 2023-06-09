output "ubuntu-latest-ami" {
  value = data.aws_ami.ubuntu.id
}

output "web-ip-address" {
  value = aws_instance.web.*.public_ip
}

output "mail-ip-address" {
  value = aws_instance.mail.*.public_ip
}
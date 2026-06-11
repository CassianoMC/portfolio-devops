output "instance_public_ip" {
  value = aws_instance.portfolio.public_ip
}

output "instance_public_dns" {
  value = aws_instance.portfolio.public_dns
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/${var.key_name}.pem ec2-user@${aws_instance.portfolio.public_ip}"
}
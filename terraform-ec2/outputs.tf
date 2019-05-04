output "app-url" {
  value = "http://${aws_eip.test-eip.public_ip}/"
}

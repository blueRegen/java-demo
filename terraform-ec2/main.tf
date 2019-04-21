resource "aws_instance" "demo-instance" {
  ami             = "${data.aws_ami.amazon.id}"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.my-test-key.key_name}"
  security_groups = [
    "${aws_security_group.allow_ssh_http.name}",
    "${aws_security_group.allow_outbound.name}"
  ]
  provisioner "local-exec" {
    command = "echo ${aws_instance.demo-instance.private_ip} ansible_user=ec2-user  > /etc/ansible/hosts ; sleep 20  && ansible-playbook /root/deploy.yaml -e ipaddress=${aws_instance.demo-instance.private_ip}"
  }
  tags {
    Name = "fa_java-webapp-demo"
  }
}

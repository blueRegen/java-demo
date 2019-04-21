resource "aws_eip" "test-eip" {
  instance    = "${aws_instance.demo-instance.id}"
}

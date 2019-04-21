resource "aws_key_pair" "my-test-key" {
  key_name   = "jenkins-key"
  public_key = "${file("jenkins.pub")}"
}

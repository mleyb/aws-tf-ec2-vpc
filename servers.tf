//servers.tf
resource "aws_instance" "test-ec2-instance" {
  ami             = "${data.aws_ami.amazon_linux.id}"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.aws_keypair.key_name}"
  security_groups = ["${aws_security_group.ingress-all-test.id}"]

  subnet_id = "${aws_subnet.subnet-uno.id}"
}

resource "aws_key_pair" "aws_keypair" {
  key_name   = "terraform_keypair"
  public_key = "${file(var.ssh_key_public)}"
}
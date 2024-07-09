resource "aws_key_pair" "ssh_key" {
  key_name   = "terra"
  public_key = file("/home/mark/.ssh/id_rsa.pub")
}
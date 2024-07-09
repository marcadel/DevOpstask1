resource "aws_instance" "PwCServer" {
  ami           = "ami-0cf2b4e024cdb6960"  # Provided AMI
  instance_type = "t2.large"
  subnet_id     = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name =  "terra"
  availability_zone = "us-west-2a"

  tags = {
    Name = "PwCServer"
  }
}

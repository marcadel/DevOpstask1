# Allocate an Elastic IP
resource "aws_eip" "PwCServer_eip" {
}

# Associate the Elastic IP with the EC2 instance
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.PwCServer.id
  allocation_id = aws_eip.PwCServer_eip.id
}

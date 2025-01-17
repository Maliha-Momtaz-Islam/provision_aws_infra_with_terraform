resource "aws_instance" "ec2_cluster" {
  count         = var.instance_count
  ami           = "ami-12345678" # Replace with a valid AMI ID
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_ids[count.index % length(var.subnet_ids)]
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "Terraform-EC2-${count.index}"
  }
}

#Provisioning ec2  instance with ebs volume
resource "aws_instance" "dev-server" {
  ami = var.ami
  instance_type = var.instance-type # 255 gb
  availability_zone = var.avz
  #key_name = "demo"
  tags = {
    Name = "dev-server"
    env = " development"
    Created_by = "terraform"
  }
}
#Creating an EBS volume
resource "aws_ebs_volume" "dev-server" {
  availability_zone = var.avz # same as instance
  size = var.size # in GB
  tags = {
    Name = "dev-server"
    env = " development"
    Created_by = "terraform"
  }
}
#Attaching EBS volume to ec2 instance
resource "aws_volume_attachment" "dev-server" {
  device_name = var.storage_path
  volume_id = aws_ebs_volume.dev-server.id
  instance_id = aws_instance.dev-server.id
}

#creating a block 
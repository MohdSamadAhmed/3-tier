resource "aws_instance" "back" {
    ami = var.ami
    instance_type = var.instance-type
    subnet_id = aws_subnet.pub1.id
    #key_name = data.aws_key_pair.existing.key_name
    vpc_security_group_ids = [aws_security_group.bastion-host.id ]
    tags = {
      Name= "bastion-server"
    }
}

data "aws_key_pair" "existing" {
  key_name = "3tier"
}
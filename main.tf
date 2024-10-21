#To create key-pair
resource "aws_key_pair" "login_key" {
  key_name   = "my_ec2_login_key"
  public_key = file("my_ec2_login_key.pub")
}

#Code to Create ec2 instance
resource "aws_instance" "my_instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.login_key.key_name
  vpc_security_group_ids = ["my_instance_sg"]
  tags = {
    Name    = "my_instance"
    Project = "LearnTF"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]

  }
  connection {
    user        = var.USER
    private_key = file("my_ec2_login_key")
    host        = self.public_ip
  }


}
 
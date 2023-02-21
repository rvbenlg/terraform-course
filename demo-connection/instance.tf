# https://cloud-images.ubuntu.com/locator/ec2/
resource "aws_key_pair" "ruben-aws-key" {
  key_name   = "mykey"
  public_key = file("${var.path_to_public_key}")
}

resource "aws_instance" "example" {
  ami           = lookup(var.amis, var.aws_region)
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name

  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }

  connection {
    user        = var.instance_username
    private_key = file("${var.path_to_private_key}")
  }
}

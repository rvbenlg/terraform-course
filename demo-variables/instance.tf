# https://cloud-images.ubuntu.com/locator/ec2/
resource "aws_instance" "example" {
	ami = "${lookup(var.amis, var.aws_region)}"
	instance_type = "t2.micro"
}
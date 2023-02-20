provider "aws" {
	access_key = "AKIAYCDTTQRW2KZ5WREH"
	secret_key = "r1Byr4bMQ2Ri8DrbJbECuDiw6gzCzQc0ysNW1Alz"
	region = "eu-west-1"
}

# https://cloud-images.ubuntu.com/locator/ec2/
resource "aws_instance" "example" {
	ami = "ami-0de3167fef21b4c0d"
	instance_type = "t2.micro"
}
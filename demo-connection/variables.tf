variable "aws_access_key" {
	type = string
}

variable "aws_secret_key" {
	type = string
}

variable "aws_region" {
	type = string
	default = "eu-west-1"
}

variable "amis" {
	type = map
	default = {
		eu-west-1 = "ami-0de3167fef21b4c0d"
	}
}

variable "path_to_private_key" {
	type = string
	default = "mykey"
}

variable "path_to_public_key" {
	type = string
	default = "mykey.pub"
}

variable "instance_username" {
	type = string
	default = "ubuntu"
}
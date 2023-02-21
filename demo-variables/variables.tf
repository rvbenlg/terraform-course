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
# > var.myvar
# > "${var.myvar}"
variable "myvar" {
    type = string
    default = "Hello Terraform!"
}

# > var.mymap["mykey"]
# > "${var.mymap["mykey"]}"
variable "mymap" {
    type = map(string)
    default = {
        mykey = "my value"
    }
}

# > var.mylist[0]
# > "${var.mylist[0]}"
# > element(var.mylist, 0)
# > slice(var.mylist, 0, 2)
variable "mylist" {
    type = list
    default = [1, 2, 3]
}

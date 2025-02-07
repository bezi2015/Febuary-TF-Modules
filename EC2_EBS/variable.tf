variable "ami" {
    description = "the ami for our instance"
    default = "ami-045269a1f5c90a6a0"
    type = string 
}  
variable "instance-type" {
    description = "the kind of instance"
    default = "t2.micro"
}
variable "avz" {
    description = "avzone for instance"
    default = "us-east-1"
    type = string
}
variable "size" {
    description = "size of our instance"
    default = 10
}
variable "storage_path" {
    description = "path of our partition"
    default = "dev/sdh"
    type = string
}
variable "region" {
    description = "name of the region where the instance will be located"
    default = "us-east-1"
    type = string
}
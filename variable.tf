variable "rds-password" {
    description = "rds password"
    type = string
    default = "srivardhan"
  
}
variable "rds-username" {
    description = "rds username"
    type = string
    default = "admin"
  
}
variable "ami" {
    description = "ami"
    type = string
  
    default = "ami-0f3caa1cf4417e51b"
  
}
variable "instance-type" {
    description = "instance-type"
    type = string
    default = "t2.micro"
  
}
variable "key-name" {
    description = "3tier"
    type = string
    default = "us-east-1"
  
}
variable "backupr-retention" {
    type = number
    default = "7"
  
}
module "terramodule" {
source = "../"
ami = "ami-045269a1f5c90a6a0"
instance-type = "t2.micro"
avz= "us-east-1"
size = 10
storage_path = "dev/sdh"
region = "us-east-1"
  
}
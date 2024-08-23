module "ec2_instance" {
  source        = "git::https://github.com/bruno-andrad/modules-aws.git//ec2UserData?ref=ec2-mod-v1"
  aws_region    = "us-east-1"
  ami_id         = "ami-0e86e20dae9224db8" 
  instance_type = "t2.micro"
  user_data     = file("invetories/${var.env}/user_data.sh")
  instance_name = "my-instance"
}

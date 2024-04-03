resource "aws_instance" "web" {
  ami                                  = "ami-033a1ebf088e56e81"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "wordpress"   # this should be the one generated in your screen
  monitoring                           = false
  security_groups                      = ["launch-wizard-1"]  # this should be the one generated in your screen
  subnet_id                            = "subnet-5594bd74"   # this should be the one generated in your screen
  tags = {
    Name = "webserver"
  }
  
  
}
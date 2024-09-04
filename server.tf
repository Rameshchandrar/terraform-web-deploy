resource "aws_instance" "example-1" {
  ami           = "ami-08ee1453725d19cdb"
  instance_type = "t2.micro"
  key_name      = "IPL"
  count         = "1"
  tags = {
    Name = "task_1"
  }
  security_groups = [aws_security_group.example_sg.name]
  user_data       = file("sample.sh")
}

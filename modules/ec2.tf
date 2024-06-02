data "aws_ami" "amazon-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance1" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.public_subnet_az1.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-1a"
  }
}

# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance2" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.public_subnet_az1.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-1b"
  }
}
# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance3" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.public_subnet_az2.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-2a"
  }
}

# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance4" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.public_subnet_az2.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-2b"
  }
}

# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance5" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.private_subnet_az1.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-3a"
  }
}

# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance6" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.private_subnet_az1.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-3b"
  }
}


# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance7" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.private_subnet_az2.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-4a"
  }
}

# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance8" {
  ami                    = data.aws_ami.amazon-ami.id
  subnet_id              = aws_subnet.private_subnet_az2.id
  instance_type          = "t2.micro"
  key_name               = "annie"
  vpc_security_group_ids = [aws_security_group.webserver_security_group.id]
  user_data              = file("command.sh")

  tags = {
    Name = "web-instance-4b"
  }
}
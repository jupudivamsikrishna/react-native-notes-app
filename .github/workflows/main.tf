provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "react_native_app" {
  ami           = "ami-xxxxxxxx"  # Use the appropriate AMI ID for EC2
  instance_type = "t2.micro"      # Use your desired EC2 instance type
  key_name      = "your-key-pair" # Replace with your EC2 key pair

  tags = {
    Name = "ReactNativeAppEC2"
  }
}

output "public_ip" {
  value = aws_instance.react_native_app.public_ip
}

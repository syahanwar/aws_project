resource "aws_instance" "web-server-instance" {
  ami               = "ami-06c4be2792f419b7b"
  instance_type     = "t2.micro"
  availability_zone = "ap-southeast-1"

user_data = <<-EOF
       #!/bin.bash
       echo "### Installing apache2 ###"
       sudo apt update -y
       sudo apt install apache2 -y
       sudo systemctl start apache2
       sudo bash -c 'echo This is my web server > /var/www/html/index.html'
       EOF

       tags = {
       name = "web-server"
       }
       
}
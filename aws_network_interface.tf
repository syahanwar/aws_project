resource "aws_network_interface" "web-server-nic" {
  subnet_id       = aws_subnet.my-subnet.id
  private_ips     = ["10.0.1.50"]
  security_groups = [aws_security_group.allow_web_traffic.id]
}
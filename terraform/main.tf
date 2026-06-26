key_name = "terraform-key"
resource "aws_instance" "web" {
  ami                         = "ami-0f58b397bc5c1f2e8"
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.deployer.key_name

  user_data = <<-EOF
#!/bin/bash
apt update -y
apt install -y apache2
systemctl enable apache2
systemctl start apache2
rm -f /var/www/html/index.html
echo "<h1>Terraform Working</h1>" > /var/www/html/index.html
EOF

  tags = {
    Name = "cloud-assessment-server"
  }
}

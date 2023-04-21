resource "aws_instance" "web" {
  count = var.web_want == true ? var.web_count :0
  instance_type = var.instance_type
  ami           = data.aws_ami.ubuntu.id
  key_name      = var.key_name

  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key  = file(var.aws_private_key_path)
    host     = self.public_ip
  }

  tags = {
    Name = "Web-${count.index}"
  }

provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install apache2 -y",
      "sudo service start apache2",
      "sudo service enable apache2",
      "cd /var/www/html",
      "sudo chmod 407 index.html",
      "sudo echo '<h1>Hello World from Web_Server</h1> <h2> venkata anand </h2>'  > /var/www/html/index.html",
      "sudo service restart apache2"
    ]
  }  
}

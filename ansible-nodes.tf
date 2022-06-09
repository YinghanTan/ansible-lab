## ================================ Ansible Node Instances ================================
resource "aws_instance" "ansible-nodes" {
  ami             = var.aws_ami_id #"ami-0750a20e9959e44ff"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.ec2loginkey.key_name
  count           = var.ansible_node_count
  security_groups = ["ansible-lab-sg"]
  user_data       = file("user-data-ansible-nodes.sh")
  tags = {
    Name = "ansible-node-${count.index + 1}"
  }
}

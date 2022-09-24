# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "instance-17" {
 ami = "ami-0149b2da6ceec4bb0"
 instance_type = "t2.micro"
 key_name = "word"
 vpc_security_group_ids = ["${aws_security_group.sg.id}"]
 subnet_id = "${aws_subnet.pub-2.id}"
 associate_public_ip_address = true
 user_data = "${file("user.sh")}"
tags = {
 Name = "Myinatcne"
}
}

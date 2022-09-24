# Getting the DNS of load balancer 
output "lb_dns_name" { 
 description = "The DNS name of the load balancer"
 value = "${aws_lb.external-elb.dns_name}" 
}


resource "aws_launch_template" "orio" {
  name_prefix   = "orio"
  image_id      = "ami-0149b2da6ceec4bb0"
  instance_type = "t2.micro"
}

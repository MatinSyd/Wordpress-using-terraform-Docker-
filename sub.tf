# Creating 1st web subnet
resource "aws_subnet" "pub-1" {
 vpc_id = "${aws_vpc.vpc.id}"
 cidr_block = "192.168.100.0/24"
 map_public_ip_on_launch = true
 availability_zone = "us-east-1a"
tags = {
 Name = "pub-1"
}
}
# Creating 2nd web subnet
resource "aws_subnet" "pub-2" {
 vpc_id = "${aws_vpc.vpc.id}"
 cidr_block = "192.168.200.0/24"
 map_public_ip_on_launch = true
 availability_zone = "us-east-1b"
tags = {
 Name = "pub-2"
}
}

# Creating 1st application subnet 
resource "aws_subnet" "private" { 
 vpc_id = "${aws_vpc.vpc.id}"
 cidr_block = "192.168.201.0/24" 
 map_public_ip_on_launch = false 
 availability_zone = "us-east-1a" 
tags = { 
 Name = "private" 
} 
}

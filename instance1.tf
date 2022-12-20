resource "aws_instance" "nginx" {
ami = "ami-0b419c3a4b01d1859"
instance_type = "t2.micro"
key_name = "DEMO1"
monitoring = true
vpc_security_group_ids = ["${aws_security_group.sg.id}"]
subnet_id = "${aws_subnet.public_subnet.id}"
associate_public_ip_address = true 
tags = {
        Name = "DEMO1"
}

user_data = file("instance1.sh")   
}
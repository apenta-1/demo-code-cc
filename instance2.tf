resource "aws_instance" "web" {
ami = "ami-0b419c3a4b01d1859"
instance_type = "t2.micro"
key_name = "DEMO2"
monitoring = true
vpc_security_group_ids = ["${aws_security_group.sg.id}"]
subnet_id = "${aws_subnet.private_subnet.id}"
private_ip = "10.0.1.11"
associate_public_ip_address = false 
tags = {
        Name = "DEMO2"
}
user_data = file("instance2.sh")
}
# (Here just deploy PHP application with Mysql(rds) And that -h host is an entry point of RDS )

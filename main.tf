resource "aws_instance" "ec2" {
  count                  = length(var.instances)
  ami                    = data.aws_ami.centos8.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags                   = {
    Name = element(var.instances, count.index )
  }
}
data "aws_ami" "centos8" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_security_group" "allow_tls" {
  name        = "all"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-00a494e89f26a41c5"

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

data "aws_route53_zone" "domain" {
  name         = var.DOMAIN_NAME
}
resource "aws_route53_record" "dns-record" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${ENV}-${element(var.instances, count.index)}.${DOMAIN_NAME}}"
  type    = "A"
  ttl     = 300
  records = [element(aws_instance.ec2.*.private_ip, count.index)]
}

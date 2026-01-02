output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.main.endpoint
}

output "vpc_id" {
  value = aws_vpc.main.id
}

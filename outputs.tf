output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "instance_public_ip" {
  description = "Public IP of the web instance"
  value       = aws_instance.web.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of the web instance"
  value       = aws_instance.web.public_dns
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.bucket.id
}

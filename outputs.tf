# Output the name of the S3 bucket created for Terraform state management
output "s3_bucket" {
  description = "S3 bucket name for Terraform state management"
  value       = module.s3_backend.bucket_name
}

# Output the list of EC2 instance IDs
output "ec2_instance_ids" {
  description = "IDs of the EC2 instances created by the EC2 cluster module"
  value       = module.ec2_cluster.instance_ids
}

# Output the public IPs of the EC2 instances
output "ec2_public_ips" {
  description = "Public IP addresses of the EC2 instances"
  value       = module.ec2_cluster.public_ips
}

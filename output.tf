output instance_ip {
  value       = module.ec2_instance.instance_public_ip
  sensitive   = false
  description = "description"
  depends_on  = []
}

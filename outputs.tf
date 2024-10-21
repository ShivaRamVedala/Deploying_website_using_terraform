output "PublicIP" {
  value = "The public IP of the instance is: ${aws_instance.my_instance.public_ip}"
}

output "PrivateIP" {
  value = "The private IP of the instance is: ${aws_instance.my_instance.private_ip}"
}

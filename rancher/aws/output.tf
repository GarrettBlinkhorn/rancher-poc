output "rancher_server_url" {
  value = module.rancher_common.rancher_url
}

output "rancher_node_private_ip" {
  value = aws_instance.rancher_server.private_ip
}

/* output "workload_node_private_ip" {
  value = aws_instance.quickstart_node.private_ip
} */

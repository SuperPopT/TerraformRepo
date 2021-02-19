output "instance_id" {
  description = "Este es el ID de la instancia"
  value = aws_instance.example.id
}
output "intance_public_ip" {
  description = "Esto es la ip de la instancia"
  value = aws_instance.example.public_ip
}

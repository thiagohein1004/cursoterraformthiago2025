output "vpc_id" {
  value = aws_vpc.meu_vpc.id
}

output "subnet_id" {
  value = aws_subnet.minha_subnet.id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "route_table_id" {
  value = aws_route_table.rota_internet.id
}

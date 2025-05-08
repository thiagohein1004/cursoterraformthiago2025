provider "aws" {
  region = var.region
}

# 1. Criando a VPC
resource "aws_vpc" "meu_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "VPC-Dependencias"
  }
}

# 2. Criando a Subnet
resource "aws_subnet" "minha_subnet" {
  vpc_id     = aws_vpc.meu_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az
  tags = {
    Name = "Subnet-Principal"
  }
}

# 3. Criando o Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.meu_vpc.id
  tags = {
    Name = "IGW-VPC-Dependencias"
  }
}

# 4. Criando a Tabela de Rotas
resource "aws_route_table" "rota_internet" {
  vpc_id = aws_vpc.meu_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "RouteTable-Internet"
  }
}

# 5. Associação da subnet à tabela de rotas
resource "aws_route_table_association" "associacao_subnet" {
  subnet_id      = aws_subnet.minha_subnet.id
  route_table_id = aws_route_table.rota_internet.id

  # Dependência explícita (boa prática aqui!)
  depends_on = [
    aws_subnet.minha_subnet,
    aws_route_table.rota_internet
  ]
}

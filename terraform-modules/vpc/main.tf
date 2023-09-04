resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
  tags = var.tags
}

resource "aws_subnet" "example" {
  count             = length(var.subnet_cidr_blocks)
  vpc_id            = aws_vpc.example.id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  tags              = merge(var.tags, { Name = format("subnet-%02d", count.index + 1) })
}



resource "aws_vpc" "local_main_vpc" {
  cidr_block       = "${var.Enter_VPC_CIDR}"   // Enter your CIDR range
  instance_tenancy = "default"

  tags = {
    Name = "${var.Enter_VPC_Name}" // Enter your vpc name
    Owner = "${var.Enter_VPC_Tag_Owner}"    // Enter Owner tag
    CanBeDelete = "${var.Enter_VPC_CanBeDelete}"   // Enter CanBeDelete tag
  }
}



#################################  AWS VPC Public & Private Subnet  #################################

resource "aws_subnet" "local_main_subnet_public" {
  vpc_id     = aws_vpc.local_main_vpc.id
  cidr_block = "${var.Enter_1st_Subnet_CIDR}"
  availability_zone = "${var.Enter_1st_Subnet_Availability_Zone}"

  tags = {
    Name = "${var.Enter_1st_Subnet_Name}"
    Owner = "${var.Enter_1st_Subnet_Tag_Owner}"
    CanBeDelete = "${var.Enter_1st_Subnet_Tag_CanBeDelete}"
  }
}

resource "aws_subnet" "local_main_subnet_private" {
  vpc_id     = aws_vpc.local_main_vpc.id
  cidr_block = "${var.Enter_2nd_Subnet_CIDR}"
  availability_zone = "${var.Enter_2nd_Subnet_Availability_Zone}"

  tags = {
    Name = "${var.Enter_2nd_Subnet_Name}"
    Owner = "${var.Enter_2nd_Subnet_Tag_Owner}"
    CanBeDelete = "${var.Enter_2nd_Subnet_Tag_CanBeDelete}"
  }
}

#################################  AWS VPC Internet Gateway  #################################

resource "aws_internet_gateway" "local_igw" {
  vpc_id = aws_vpc.local_main_vpc.id

  tags = {
    Name = "${var.Enter_Internet_Gateway_Name}"
    Owner = "${var.Enter_Internet_Gateway_Owner}"
    CanBeDelete = "${var.Enter_Internet_Gateway_CanBeDelete}"
  }
}



#################################  AWS VPC Route Table  #################################

resource "aws_route_table" "local_route_table_public" {
  vpc_id = aws_vpc.local_main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.local_igw.id
  }

  tags = {
    Name = "${var.Enter_1st_Route_table_Name}"
    Owner = "${var.Enter_1st_Route_table_Owner}"
    CanBeDelete = "${var.Enter_1st_Route_table_CanBeDelete}"
  }
}

resource "aws_route_table" "local_route_table_private" {
  vpc_id = aws_vpc.local_main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.local_igw.id
  }

  tags = {
    Name = "${var.Enter_2nd_Route_table_Name}"
    Owner = "${var.Enter_2nd_Route_table_Owner}"
    CanBeDelete = "${var.Enter_2nd_Route_table_CanBeDelete}"
  }
}

resource "aws_route_table_association" "local_subnet_association_public" {
  subnet_id      = aws_subnet.local_main_subnet_public.id
  route_table_id = aws_route_table.local_route_table_public.id
}

resource "aws_route_table_association" "local_subnet_association_private" {
  subnet_id      = aws_subnet.local_main_subnet_private.id
  route_table_id = aws_route_table.local_route_table_private.id
}




//////////////        create elastic ip and create nat gateway /////////////////////////////////////

# resource "aws_eip" "local_nat_gateway_eip" {
#   vpc      = true

#   tags = {
#     Name = "nat-elastic-ip-terraform"
#     Owner = "Atul"
#     CanBeDelete = "Yes"
#   }

# }

# resource "aws_nat_gateway" "local_nat_gateway" {
#   allocation_id = aws_eip.local_nat_gateway_eip.id
#   subnet_id     = aws_subnet.local_main_subnet_private.id
#   depends_on = [aws_eip.local_nat_gateway_eip]

#   tags = {
#     Name = "private-nat-gateway-terraform"
#     Owner = "Atul"
#     CanBeDelete = "Yes"
#   }
 
# }



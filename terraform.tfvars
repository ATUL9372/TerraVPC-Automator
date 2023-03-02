region = "ap-southeast-1"       // Enter your aws region name 

access_keys = "xxxxxxxxxxxxxxxxxxxxx" // Enter your access Key

secret_keys = "yyyyyyyyyyyyyyyyyyyyyyyyy" // Enter your Secret Key 

#####################################
#                                   #
#                AWS VPC            #
#                                   #
###################################################################
# Note : Please check your VPC IP and CIDR is allready used or not
###################################################################

#========== AWS VPC =========

Enter_VPC_Name = "terraform-vpc" // Enter your vpc name EX : terraform-vpc

Enter_VPC_CIDR = "192.0.0.0/16" // Enter your VPC CIDR  EX : 10.0.0.0/16

Enter_VPC_Tag_Owner = "Atul"  // Enter your vpc owner name tag  EX : Atul

Enter_VPC_CanBeDelete = "Yes"  // Enter your vpc canbedelete tag EX : Yes/No

#========== AWS VPC subnets  =========

Enter_1st_Subnet_Name = "Public-subnet-terraform"  // Enter your 1 st subnet name  EX : Public-subnet-terraform

Enter_1st_Subnet_CIDR = "192.0.0.0/20"  // Enter 1st vpc subnet cidr range EX : 10.0.0.0/20

Enter_1st_Subnet_Availability_Zone = "ap-southeast-1a" // Enter AWS region availability zone name EX : ap-southeast-1a ,ap-southeast-1b, ap-southeast-1c

Enter_1st_Subnet_Tag_Owner = "Atul"  // Enter 1st subnet owner name tag EX : Atul 

Enter_1st_Subnet_Tag_CanBeDelete = "Yes" // Enter 1st subnet canbedelete tag EX : Yes/No

##

Enter_2nd_Subnet_Name = "Private-subnet-terraform"  // Enter your 2nd subnet name  EX : Private-subnet-terraform

Enter_2nd_Subnet_CIDR = "192.0.16.0/20"  // Enter 1st vpc subnet cidr range EX : 10.0.16.0/20

Enter_2nd_Subnet_Availability_Zone = "ap-southeast-1b" // Enter AWS region availability zone name EX : ap-southeast-1a ,ap-southeast-1b, ap-southeast-1c

Enter_2nd_Subnet_Tag_Owner = "Atul"  // Enter 2nd subnet owner name tag EX : Atul 

Enter_2nd_Subnet_Tag_CanBeDelete = "Yes" // Enter 2nd subnet canbedelete tag EX : Yes/No


#========== AWS VPC Internet Gateway  =========

Enter_Internet_Gateway_Name = "IGW-Terraform"  // Enter your VPC Internet Gateway Name EX : IGW-Terraform

Enter_Internet_Gateway_Owner = "Atul"   // Enter your internet gateway owner tag name EX : Atul

Enter_Internet_Gateway_CanBeDelete = "Yes" // Enter your internet gateway canbedelete tag name EX : Yes/No


#========== AWS VPC Route Table  =========

Enter_1st_Route_table_Name = "Public-route-table-terraform" // Enter your 1st route table name EX : Public-route-table-terraform

Enter_1st_Route_table_Owner = "Atul"  // Enter your 1st route table owner tag name EX : Atul

Enter_1st_Route_table_CanBeDelete = "Yes"  // Enter your 1st route table canbedelete tag name EX : Yes/No

##

Enter_2nd_Route_table_Name = "private-route-table-terraform" // Enter your 1st route table name EX : Public-route-table-terraform

Enter_2nd_Route_table_Owner = "Atul"  // Enter your 1st route table owner tag name EX : Atul

Enter_2nd_Route_table_CanBeDelete = "Yes"  // Enter your 1st route table canbedelete tag name EX : Yes/No


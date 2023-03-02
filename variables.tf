variable "access_keys" {    
  type = string
}

variable "secret_keys" {      
  type = string
}

variable "region" {
  type = string
}

#####################################
#                                   #
#                AWS VPC            #
#                                   #
#####################################

#========== AWS VPC =========

variable "Enter_VPC_Name" {
    type =  string
}

variable "Enter_VPC_CIDR" {
    type =  string 
}

variable "Enter_VPC_Tag_Owner" {
    type =  string
}

variable "Enter_VPC_CanBeDelete" {
    type =  string
}

#========== AWS VPC subnets  =========

variable "Enter_1st_Subnet_Name" {
    type = string  
}

variable "Enter_1st_Subnet_CIDR" {
    type = string  
}

variable "Enter_1st_Subnet_Availability_Zone" {
    type = string  
}

variable "Enter_1st_Subnet_Tag_Owner" {
    type = string  
}

variable "Enter_1st_Subnet_Tag_CanBeDelete" {
    type = string  
}

#
variable "Enter_2nd_Subnet_Name" {
    type = string  
}

variable "Enter_2nd_Subnet_CIDR" {
    type = string  
}

variable "Enter_2nd_Subnet_Availability_Zone" {
    type = string  
}

variable "Enter_2nd_Subnet_Tag_Owner" {
    type = string  
}

variable "Enter_2nd_Subnet_Tag_CanBeDelete" {
    type = string  
}

#========== AWS VPC Internet Gateway  =========

variable "Enter_Internet_Gateway_Name" {
    type = string
}

variable "Enter_Internet_Gateway_Owner" {
    type = string
}

variable "Enter_Internet_Gateway_CanBeDelete" {
    type = string
}


#========== AWS VPC Route Table  =========

variable "Enter_1st_Route_table_Name" {
  type = string
}


variable "Enter_1st_Route_table_Owner" {
  type = string
}

variable "Enter_1st_Route_table_CanBeDelete" {
  type = string
}

#

variable "Enter_2nd_Route_table_Name" {
  type = string
}

variable "Enter_2nd_Route_table_Owner" {
  type = string
}

variable "Enter_2nd_Route_table_CanBeDelete" {
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
}

variable "vnet_name" {
    description = "Name of the virtual network to create"
    default     = "tfvnet"
}

variable "vm_name" {
    description = "Name of the virtual machine to create"
    default     = "tfvm"
}

variable "node_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default     = "eastus"
}

variable "resource_prefix" {
         type = string
  description = "The prefix of resource"
  default     = "exh"
}


variable "tags" {
  type        = map
  default     = {
      projectName = "ExhIac"
      Owner = "Me"
  
  }
  description = "Any tags which should be assigned to the resources in this example"
}

variable "node_address_space"{
    default     = ["10.0.1.0/27"]
    description = "Node Address"
}

variable "node_address_prefix" {
default = ["1.0.0.0/16"]
}


#variable for Environment
variable "environment" {
    type = string
    description = "Sets the environment of the vms"
}

variable "node_count" {
    type = number
    default = 1
}

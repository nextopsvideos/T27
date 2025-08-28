resourcedetails = {
  "eastus" = {
    rg_name        = "eastRG"
    rg_location    = "eastus"
    vnet_name      = "eastvnet01"
    address_space  = ["10.20.0.0/16"]
    subnet_name    = "eastsubnet1"
    address_prefix = ["10.20.1.0/24"]
    vm_name        = "eastvm"
    vm_size        = "Standard_B1s"
    nic_name       = "eastvmnic"    
  }
  "westus" = {
    rg_name        = "westRG"
    rg_location    = "westus"
    vnet_name      = "westvnet01"
    address_space  = ["10.30.0.0/16"]
    subnet_name    = "westsubnet1"
    address_prefix = ["10.30.1.0/24"]
    vm_name        = "westvm"
    vm_size        = "Standard_B2s"
    nic_name       = "westvmnic" 
  }
}
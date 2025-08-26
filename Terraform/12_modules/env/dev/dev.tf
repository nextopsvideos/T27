module "dev" {
    source          = "../../aks"
    rg_name         = "DevEnvRG"
    rg_location     = "eastus"
    acr_name        = "nextopsdevacrt27"
    acr_sku         = "Standard"
    aks_name        = "nextopsdevaks27"
    node_count      = 2
    env             = "dev"
}
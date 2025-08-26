module "prod" {
    source          = "../../aks"
    rg_name         = "ProdEnvRG"
    rg_location     = "westus"
    acr_name        = "nextopsprodacrt27"
    acr_sku         = "Premium"
    aks_name        = "nextopsprodaks27"
    node_count      = 3
    env             = "prod"  
}
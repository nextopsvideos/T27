module "staging" {
    source          = "../../aks"
    rg_name         = "StagingRG"
    rg_location     = "centralus"
    acr_name        = "nextopstgacrt27"
    acr_sku         = "Basic"
    aks_name        = "nextopsstgaks27"
    node_count      = 1
    env             = "Staging"  
}
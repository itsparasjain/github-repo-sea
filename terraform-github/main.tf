terraform {
  backend "azurerm" {
    resource_group_name  = "rg-github-sea-001"
    storage_account_name = "storageaccount1009080"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}

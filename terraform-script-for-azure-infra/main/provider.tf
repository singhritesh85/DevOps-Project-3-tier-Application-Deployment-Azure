provider "azurerm" {
  subscription_id = "512XXXX6-XXXX-49c6-XXXX-f1cbXXXXX15d"
  tenant_id = "8a0XXXXX9-3XX4-X678-XXXX-b6c8e37XXXXXX"
  features {
    
    log_analytics_workspace {
      permanently_delete_on_destroy = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = true    ### All the Resources within the Resource Group must be deleted before deleting the Resource Group.
    }
   
    virtual_machine {
      delete_os_disk_on_deletion = true
    }
  }
}

#############################################################################
prefix = "aks"
location = ["East US", "East US 2", "Central India", "Central US"]
kubernetes_version = ["1.26.6", "1.26.10", "1.27.3", "1.27.7", "1.28.0", "1.28.3", "1.28.5", "1.29.0", "1.29.2"]
ssh_public_key = "ssh-key"
action_group_shortname = "aks-action"
monitoring_namespace = "monitoring"
k8s_management_node_rg = "ritesh"  ### Provide the Resource Group Name of your Terraform Server.
k8s_management_node_vnet = "Terraform-Server-vnet"  ### Provide VNet name into which your Terraform Server exists.
k8s_management_node_vnet_id = "/subscriptions/51283936-af44-49c6-9a24-f1cbdc17915d/resourceGroups/ritesh/providers/Microsoft.Network/virtualNetworks/Terraform-Server-vnet"  ### Provide the VNet ID for the VNet into which your Terraform Server exists.
env = ["dev", "stage", "prod"]

##################################### Parameters to create Azure VM #######################################

vm_count = 2
vm_size = ["Standard_B2s", "Standard_B2ms", "Standard_B4ms", "Standard_DS1_v2"]
disk_size_gb = 32
extra_disk_size_gb = 50
computer_name = "VM"
admin_username = "ritesh"
admin_password = "Password@#795"
static_dynamic = ["Static", "Dynamic"]
availability_zone = [1] ### Provide the Availability Zones into which the VM to be created.

############################ Create the Azure Container Registry #################################

acr_sku  = ["Basic", "Standard", "Premium"]
admin_enabled = true  ##### Select true or false. Default value is false.

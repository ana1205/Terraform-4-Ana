output "resource_group_name" {
  description = "Grupo de recursos creado por Terraform."
  value       = azurerm_resource_group.main.name
}

output "virtual_network_name" {
  description = "Nombre de la red virtual."
  value       = azurerm_virtual_network.main.name
}

output "subnet_ids" {
  description = "IDs de las subredes del diseño."
  value = {
    app       = azurerm_subnet.app.id
    db        = azurerm_subnet.db.id
    vm        = azurerm_subnet.vm.id
    endpoints = azurerm_subnet.endpoints.id
    bastion   = azurerm_subnet.bastion.id
  }
}

output "storage_account_name" {
  description = "Cuenta de almacenamiento creada."
  value       = azurerm_storage_account.main.name
}

output "app_service_default_hostname" {
  description = "Hostname de App Service, si fue habilitado."
  value       = try(azurerm_linux_web_app.app[0].default_hostname, null)
}

output "worker_vm_private_ip" {
  description = "IP privada de la VM worker, si fue habilitada."
  value       = try(azurerm_network_interface.vm[0].private_ip_address, null)
}

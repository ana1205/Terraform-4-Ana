variable "subscription_id" {
  description = "ID de la suscripción de Azure. No compartas este dato públicamente."
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Región de Azure para los recursos."
  type        = string
  default     = "eastus"
}

variable "resource_prefix" {
  description = "Prefijo para nombrar recursos."
  type        = string
  default     = "tf4ana"
}

variable "admin_username" {
  description = "Usuario administrador de la VM Linux."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Ruta local a una clave pública SSH. Se usa solo para la VM."
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "postgres_admin_username" {
  description = "Administrador de PostgreSQL."
  type        = string
  default     = "pgadminuser"
}

variable "postgres_admin_password" {
  description = "Contraseña de PostgreSQL (mínimo 8 caracteres; combina mayúsculas, minúsculas, números y símbolos)."
  type        = string
  sensitive   = true
}

variable "deploy_bastion" {
  description = "Azure Bastion puede generar cargos. Mantener false hasta confirmar presupuesto."
  type        = bool
  default     = false
}

variable "deploy_postgres" {
  description = "PostgreSQL Flexible Server puede generar cargos. Mantener false hasta confirmar presupuesto."
  type        = bool
  default     = false
}

variable "deploy_vm" {
  description = "Crea la VM Linux worker si es true."
  type        = bool
  default     = false
}

variable "deploy_app_service" {
  description = "Crea App Service Linux si es true; el plan puede generar cargos."
  type        = bool
  default     = false
}

variable "deploy_storage_private_endpoint" {
  description = "Crea Private Endpoint de Storage; puede generar cargos."
  type        = bool
  default     = false
}

variable "deploy_postgres_private_endpoint" {
  description = "Crea Private Endpoint de PostgreSQL; puede generar cargos."
  type        = bool
  default     = false
}

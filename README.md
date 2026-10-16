# Terraform 4 - Arquitectura Azure for Students

Proyecto académico de Terraform basado en el diagrama proporcionado para la práctica 14.

## Contenido

- Red virtual `10.0.0.0/16`.
- Subredes para App Service, base de datos, VM worker, Private Endpoints y Azure Bastion.
- NSG y asociaciones de seguridad.
- App Service Linux con identidad administrada (opcional).
- VM Linux worker con identidad administrada y autenticación SSH (opcional).
- Storage Account y contenedor privado Blob.
- DNS privado para Blob y PostgreSQL.
- PostgreSQL Flexible Server y Private Endpoint (opcionales).
- Azure Bastion (opcional).
- Reporte Word: `Reporte_Practica_14_Terraform_4.docx`.

## Requisitos

- Terraform >= 1.5
- Git
- Azure CLI (solo para autenticación/despliegue)
- Suscripción de Azure con permisos suficientes para crear recursos.

## Inicio

1. Copia `terraform.tfvars.example` como `terraform.tfvars`.
2. Edita `terraform.tfvars` localmente con el ID de suscripción y una contraseña segura.
3. No compartas ni subas `terraform.tfvars`.
4. Inicia y valida:

```bash
terraform fmt -recursive
terraform init
terraform validate
```

5. Inicia sesión en Azure cuando tengas una suscripción disponible:

```bash
az login
az account set --subscription "TU_SUBSCRIPTION_ID"
```

6. Revisa el plan antes de crear recursos:

```bash
terraform plan -out=tf4.plan
```

7. Solo si tienes autorización y revisaste los costos, aplica:

```bash
terraform apply tf4.plan
```

## Control de costos

Los recursos Azure Bastion, PostgreSQL Flexible Server, App Service, VM y Private Endpoints pueden generar cargos. Sus variables `deploy_*` están desactivadas por defecto, salvo Storage y la infraestructura de red base. Revisa precios y cuotas de tu suscripción antes de aplicar. Si no tienes una suscripción habilitada, puedes entregar el código y las evidencias de `fmt`, `init` y `validate`, aclarando que no se desplegó.

## Importante

Este código es una base académica que requiere revisión y pruebas en la versión concreta del proveedor y en la suscripción objetivo. La configuración de red y servicios privados puede necesitar ajustes para cumplir requisitos específicos de producción. No representa una landing zone empresarial completa lista para producción.

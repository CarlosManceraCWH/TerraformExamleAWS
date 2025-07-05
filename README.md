# TerraformExamleAW# Proyecto Terraform AWS Free Tier

Este proyecto usa Terraform para crear en AWS una infraestructura básica en Free Tier que incluye:

- Una VPC con dos subnets públicas en diferentes zonas de disponibilidad  
- Un Internet Gateway y tabla de rutas pública  
- Una instancia EC2 Ubuntu t2.micro con acceso SSH (usa key pair existente)  
- Un RDS MySQL db.t3.micro con subnet group en las dos subnets públicas  
- Seguridad configurada para permitir SSH y acceso MySQL desde EC2

---

## Requisitos

- Cuenta AWS con permisos para crear VPC, EC2, RDS, Security Groups, Key Pairs  
- Terraform instalado (versión recomendada >= 1.0)  
- AWS CLI configurado (`aws configure`) o variables de entorno para autenticación  
- Key pair en AWS llamada `Terraformkey` y archivo privado `Terraformkey.pem` localmente  

---

## Variables importantes

Edita `variables.tf` para configurar:

- `aws_region` (por defecto `us-east-1`)  
- `ubuntu_ami` (AMI Ubuntu 22.04 para la región)  
- `db_username` y `db_password` para la base de datos MySQL  

---

## Cómo usar

1. Clona el repositorio:

   ```bash
   git clone <tu-repositorio.git>
   cd <tu-repositorio>


Inicializa Terraform:

terraform init
Aplica la configuración:


terraform apply
Cuando termine, verás en los outputs:

IP pública de la instancia EC2

Endpoint de conexión al RDS MySQL

Para conectar a EC2 via SSH:


ssh -i ./Terraformkey.pem ubuntu@<ec2_public_ip>
Para conectar a MySQL desde EC2 o localmente (si permites acceso público):


mysql -h <rds_endpoint> -u <db_username> -p
Limpieza
Para eliminar todo lo creado:
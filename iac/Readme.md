# Proyecto Docker + Terraform

## Descripción
Este proyecto despliega una aplicación web, API y base de datos usando Docker y Terraform.

## Estructura
- web: contiene HTML servido con nginx
- api: backend en Node.js
- iac: infraestructura con Terraform

## Requisitos
- Docker
- Terraform

## Pasos de ejecución

### 1. Construir imágenes
docker build -t lab/web ./web
docker build -t lab/api ./api

### 2. Inicializar Terraform
cd iac
terraform init

### 3. Crear workspace
terraform workspace new localhost

### 4. Desplegar infraestructura
terraform apply

## Puertos

| Servicio | Puerto |
|--------|--------|
| Web | 4001 |
| API | 4002 |
| DB | 4003 |

## Workspaces

- localhost → puertos 400X
- dev → puertos 500X
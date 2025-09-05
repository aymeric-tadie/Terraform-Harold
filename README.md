# Terraform-Harold

Ce projet Terraform permet de déployer une instance EC2 AWS simple avec une configuration de base.

## Description

Le projet crée :
- Un provider AWS configuré pour la région spécifiée.
- Une instance EC2 avec les paramètres définis (AMI, type d'instance, clé SSH, tags).

## Prérequis

- [Terraform](https://www.terraform.io/downloads.html) installé (version 1.0 ou supérieure).
- Compte AWS avec des credentials configurés (via AWS CLI ou variables d'environnement).
- Clé SSH créée dans AWS avec le nom spécifié (par défaut : HaroldKey).

## Utilisation

1. Clonez ce repository :
   ```bash
   git clone 
   cd Terraform-Harold
   ```

2. Initialisez Terraform :
   ```bash
   terraform init
   ```

3. Vérifiez le plan d'exécution :
   ```bash
   terraform plan
   ```

4. Appliquez la configuration :
   ```bash
   terraform apply
   ```

5. Pour détruire les ressources :
   ```bash
   terraform destroy
   ```

## Variables

Les variables suivantes peuvent être configurées dans `terraform.tfvars` ou via des options de ligne de commande :

- `region` : Région AWS (par défaut : us-east-1)
- `ami` : ID de l'AMI pour l'instance EC2 (par défaut : ami-00ca32bbc84273381)
- `instance_type` : Type d'instance EC2 (par défaut : t2.small)
- `key_name` : Nom de la clé SSH (par défaut : HaroldKey)
- `tags` : Map des tags à appliquer à l'instance (par défaut : {Name = "Terraform-Harold"})

## Fichiers

- `main.tf` : Configuration principale Terraform.
- `variables.tf` : Définition des variables.
- `terraform.tfvars` : Valeurs des variables.
- `.gitignore` : Fichiers à ignorer par Git.

## Notes

- Assurez-vous que votre compte AWS a les permissions nécessaires pour créer des instances EC2.
- Les coûts AWS peuvent s'appliquer pour l'utilisation des ressources.

## Licence

Ce projet est sous licence MIT.

variable "region" {
  description = "La région AWS dans laquelle déployer les ressources"
  type        = string
  default     = "us-east-1" # Vous pouvez changer la valeur par défaut si nécessaire
}

variable "ami" {
  description = "L'AMI à utiliser pour l'instance EC2"
  type        = string
}

variable "instance_type" {
  description = "Le type d'instance EC2"
  type        = string
}

variable "key_name" {
  description = "Le nom de la clé SSH pour accéder à l'instance"
  type        = string
}

variable "tags" {
  description = "Les tags à appliquer à l'instance"
  type        = map(string)
}
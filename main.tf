terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.56.0"
    }
  }
}

variable "subscription_id" {
  description = "subscription_id"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "tenant_id"
  type        = string
  sensitive   = true
}

variable "client_id" {
  description = "client_id"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "client_secret"
  type        = string
  sensitive   = true
}

provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
  client_id = var.client_id
  client_secret = var.client_secret
  features {}
  }

module "DPU_Azure_Terraform" {
  source = "./Resources"
}


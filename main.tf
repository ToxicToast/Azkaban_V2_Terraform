terraform {
  required_version = ">= 1.3.0"

  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.11"
    }
  }
}

variable "proxmox_api_var" {
  type = string
  default = "https://proxmox.url:8006"
}

variable "proxmox_api_token_var" {
  type = string
  default = "token"
}

variable "proxmox_api_token_secret_var" {
  type = string
  default = "secret"
}

variable "proxmox_vm_id" {
  type = number
  default = 9000
}

variable "proxmox_vm_cores" {
  type = number
  default = 1
}

variable "proxmox_vm_sockets" {
  type = number
  default = 2
}

variable "proxmox_vm_memory" {
  type = number
  default = 3072
}

variable "proxmox_vm_target_node" {
  type = string
  default = "pve"
}

variable "proxmox_vm_clone_node" {
  type = number
  default = 9000
}
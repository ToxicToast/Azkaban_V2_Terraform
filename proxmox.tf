provider "proxmox" {
  pm_api_url = var.proxmox_api_var
  pm_api_token_id = var.proxmox_api_token_var
  pm_api_token_secret = var.proxmox_api_token_secret_var
  pm_tls_insecure = true
}
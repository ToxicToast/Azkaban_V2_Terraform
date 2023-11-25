resource "proxmox_vm_qemu" "k3s-server" {

  count = 2
  name = "k3s-server-${count.index}"
  desc = "Kubernetes Node"
  vmid = count.index + 10
  target_node = var.proxmox_vm_target_node
  agent = 1
  clone = var.proxmox_vm_clone_node
  cores = var.proxmox_vm_cores
  sockets = var.proxmox_vm_sockets
  memory = var.proxmox_vm_memory

  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  disk {
    storage = "local"
    type = "scsi0"
    size = "50G"
    ssd = 1
  }

  os_type = "cloud-init"
  nameserver = "192.168.1.1"
}
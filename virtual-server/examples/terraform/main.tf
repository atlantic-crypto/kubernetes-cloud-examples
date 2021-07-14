provider "kubernetes" {
  config_path = var.kubeconfig_path
}

provider "kubernetes-alpha" {
  config_path = var.kubeconfig_path
}

resource "random_password" "vdi_generate_password" {
  count            = var.vdi_generate_password ? 1 : 0
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "helm_release" "switchboard" {
  name      = "switchboard"
  chart     = "oci://ghcr.io/borchero/charts/switchboard"
  namespace = kubernetes_namespace.switchboard.metadata[0].name
values     = [file(var.values_file)]
}

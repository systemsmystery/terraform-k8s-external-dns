resource "kubernetes_namespace" "external_dns" {
  metadata {
    name = "external-dns"
  }
}

resource "kubernetes_namespace" "switchboard" {
  metadata {
    name = "switchboard"
  }
}
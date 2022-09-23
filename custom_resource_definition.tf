data "kubectl_path_documents" "external_dns" {
  pattern = "${path.module}/external-dns-crd.yaml"
}

resource "kubernetes_manifest" "external_dns" {
  for_each = toset(data.kubectl_path_documents.cert_manager.documents)
  manifest = yamldecode(each.value)
}
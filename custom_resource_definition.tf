data "kubectl_path_documents" "external_dns" {
  pattern = "${path.module}/external-dns-crd.yaml"
}

resource "kubectl_manifest" "external_dns" {
  for_each  = toset(data.kubectl_path_documents.external_dns.documents)
  yaml_body = each.value
}

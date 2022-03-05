module "this" {
  source              = "r0ck40k/iam-group/aws"
  version             = "0.1.0"
  for_each            = var.groups
  context             = var.context
  additional_policies = []
  additional_policy_documents = each.value.require_mfa == true ? concat(each.value.policy_documents, [
    data.aws_iam_policy_document.user_mfa.json
  ]) : each.value.policy_documents
  allowed_roles      = each.value.allowed_roles
  elasticsearch_arns = []
  name               = each.key
}

data "aws_iam_policy_document" "user_mfa" {
  statement {
    effect = "Allow"
    actions = [
      "iam:GetAccountPasswordPolicy",
      "iam:GetAccountSummary",

    ]
    resources = [
      "*"
    ]
  }
  statement {
    effect = "Allow"
    actions = [
      "iam:ChangePassword",
      "iam:GetAccountPasswordPolicy",
      "iam:GetAccountSummary",
      "iam:ListVirtualMFADevices",
      "iam:DeleteSigningCertificate",
      "iam:ListSigningCertificates",
      "iam:UpdateSigningCertificate",
      "iam:UploadSigningCertificate",
      "iam:DeleteSSHPublicKey",
      "iam:GetSSHPublicKey",
      "iam:ListSSHPublicKeys",
      "iam:UpdateSSHPublicKey",
      "iam:UploadSSHPublicKey",
      "iam:CreateVirtualMFADevice",
      "iam:DeleteVirtualMFADevice",
      "iam:DeactivateMFADevice",
      "iam:EnableMFADevice",
      "iam:ListMFADevices",
      "iam:ListVirtualMFADevices",
      "iam:ResyncMFADevice",
      "iam:ListAccessKeys",
      "iam:CreateAccessKey"

    ]
    resources = ["*"]
  }
  statement {
    effect = "Deny"
    not_actions = [
      "iam:CreateLoginProfile",
      "iam:ChangePassword",
      "iam:CreateVirtualMFADevice",
      "iam:EnableMFADevice",
      "iam:ListMFADevices",
      "iam:ListVirtualMFADevices",
      "iam:ResyncMFADevice",
      "sts:AssumeRole"
    ]
    resources = [
      "*"
    ]
    condition {
      test = "BoolIfExists"
      values = [
      false]
      variable = "aws:MultiFactorAuthPresent"
    }
  }
}

package s3.policies

deny[reason] if {
  some i
  input.Resources[i].Type == "AWS::S3::Bucket"
  config := input.Resources[i].Properties.PublicAccessBlockConfiguration
  not config.BlockPublicAcls
  reason := "S3 Bucket allows public ACLs"
}

deny[reason] if {
  some i
  input.Resources[i].Type == "AWS::S3::Bucket"
  config := input.Resources[i].Properties.PublicAccessBlockConfiguration
  not config.BlockPublicPolicy
  reason := "S3 Bucket allows public policies"
}

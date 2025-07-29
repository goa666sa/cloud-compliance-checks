package s3.policies

deny[reason] {
  input.Resources[_].Type == "AWS::S3::Bucket"
  config := input.Resources[_].Properties.PublicAccessBlockConfiguration
  not config.BlockPublicAcls
  reason := "S3 Bucket allows public ACLs"
}

deny[reason] {
  input.Resources[_].Type == "AWS::S3::Bucket"
  config := input.Resources[_].Properties.PublicAccessBlockConfiguration
  not config.BlockPublicPolicy
  reason := "S3 Bucket allows public policies"
}

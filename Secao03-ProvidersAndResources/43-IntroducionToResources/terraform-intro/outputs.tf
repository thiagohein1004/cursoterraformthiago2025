output "bucket_id" {
  value = aws_s3_bucket.meu_bucket.id
}

output "ec2_id" {
  value = aws_instance.myinstancetest.id
}
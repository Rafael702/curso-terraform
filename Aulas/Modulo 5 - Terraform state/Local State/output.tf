output "bucket_id" {
  description = "Id Da Bucket criada na aws"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "ARN da Bucket criada na AWS"
  value       = aws_s3_bucket.bucket.arn
}
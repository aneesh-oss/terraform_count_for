output "BucketName" {
    value = "${aws_s3_bucket.name.*.id}"
}
# output "bucket_names" {
#   value       = aws_s3_bucket.bucket[*].id 
# }
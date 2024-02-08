# resource "aws_s3_bucket" "bucket" {
#   for_each  = var.projects

#   bucket = "bucket-${each.value}"
# }
resource "aws_s3_bucket" "bucket" {
  for_each  = var.projects

  bucket   = "bucket-test-check-${each.key}"
  tags  = merge(var.extra_tags, {Name = each.value})
}
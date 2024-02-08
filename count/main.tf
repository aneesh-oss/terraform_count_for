# resource "aws_instance" "example1" {
#   ami           = "ami-03f4878755434977f" # Amazon Linux 2 AMI, you can choose a different AMI
#   instance_type = "t2.micro"                # Change the instance type if needed
 
 
# lifecycle{
#     ignore_changes = [ ami ]
# }
#   tags = {
#     Name = "example-instance-test-3"
#   }
# } 

# resource "aws_s3_bucket" "bucket1" {
#   count = 3
#   bucket = "my-tf-test-bucket-${count.index}"
# }   
resource "aws_s3_bucket" "name" {
    count = length(var.projects)

    bucket = "my-tf-test-bucket-check-${var.projects[count.index]}"
    # bucket = "my-tf-test-bucket-check-${var.project}-${random_id.rnd.hex}"
}
# output "BucketName" {
#     value = "${aws_s3_bucket.name.*.id}"
# }

# variable "project" {}

# resource "random_id" "rnd" {
#     byte_length = 8
# }

# provider "aws" {
#  region = "us-east-1"
#  version = "~> 2.7"
# }


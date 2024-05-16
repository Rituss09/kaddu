# MyS3Bucket.tf
provider "aws" {
  region = "ap-south-1"
}
variable "s3_bucket_names" {
  type = list
  default = ["ritu-bucket.app", "ramesh-bucket.app", "saroj-bucket.app", "kaddu-bucket.app", "tiru-bucket.app"]
}

resource "aws_s3_bucket" "rugged_buckets" {
  count         = length(var.s3_bucket_names) //count will be 3
  bucket        = var.s3_bucket_names[count.index]

 
}

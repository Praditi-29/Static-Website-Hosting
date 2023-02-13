
resource "aws_s3_bucket" "S3_Bucket" {
  bucket = var.BucketNames
  acl    = "public-read"

  website {
    index_document = "Example.html"
  }
  tags = var.Tags
}
resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.S3_Bucket.bucket
  content_type = "text/html"
  acl    = "public-read"
  key    = "Example.html"
  source = "Example.html"
  tags = var.Tags
}
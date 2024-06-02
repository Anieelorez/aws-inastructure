# Define the KMS Key# Define the KMS Key
resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
  enable_key_rotation = true
} 

resource "aws_s3_bucket" "source_bucket" {
  bucket = "SOURCE-LOREZHAIR"

  tags = {
    Name        = "SOURCE-LOREZHAIR"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "source_bucket" {
  bucket = aws_s3_bucket.source_bucket.id 
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "source_bucket" {
  bucket = aws_s3_bucket.source_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
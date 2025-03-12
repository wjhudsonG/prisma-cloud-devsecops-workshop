provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "8e94f741-a203-42b9-833f-504246965490"
    git_commit           = "d943189bb2a7c28470164ebe0e576f6fc72f6291"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-12 16:32:38"
    git_last_modified_by = "86381780+wjhudsonG@users.noreply.github.com"
    git_modifiers        = "86381780+wjhudsonG"
    git_org              = "wjhudsonG"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

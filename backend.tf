terraform {
  backend "s3" {
    bucket = "gopichandvcc"
    key    = "dev/"
    region = "us-east-1"
  }
}

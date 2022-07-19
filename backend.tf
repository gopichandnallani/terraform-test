terraform {
  backend "s3" {
    bucket = "gopichandvcc"
    key    = "terraform/"
    region = "us-east-1"
  }
}

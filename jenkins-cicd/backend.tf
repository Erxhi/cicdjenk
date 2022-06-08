terraform {
  backend "s3" {
    bucket         = "erxhbucket"
    key            = "jenkins/tfstate.tf"
    region         = "us-east-1"
    encrypt        = true
  }
}

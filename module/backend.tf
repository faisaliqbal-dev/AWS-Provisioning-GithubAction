terraform {
  backend "s3" {
    bucket = "tf-state-files-terraform-githubactios-provisioning "
    key    = "terraform/terraform.tfstatefiles"
    region = "ap-southeast-2"
  }
}

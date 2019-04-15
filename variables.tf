#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = "string"
}
variable "aws_region" {
  default = "us-east-1"
}
variable "aws_profile" {
  default = "iam-gmail" # Profile name in the shared credentials file (e.g. ~/.aws/credentials)
}

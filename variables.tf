variable "tags" {
    type = "map"
}

variable "share_name" {
  description = "name of the resource share."
  type = "string"  
}

variable "resource_arn" {
  description = "ARN of the resource to share"
  type = "string"
}

variable "share_principal" {
  description = "The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN."
  type = "string"
}

resource "aws_ram_resource_share" "share" {
  name = "${var.share_name}"
  allow_external_principals = true

  tags = "${var.tags}"
}

resource "aws_ram_resource_association" "resource" {
  resource_arn       = "${var.resource_arn}"
  resource_share_arn = "${aws_ram_resource_share.share.arn}"
}

resource "aws_ram_principal_association" "principal" {
  principal          = "${var.share_principal}"
  resource_share_arn = "${aws_ram_resource_share.share.arn}"
}
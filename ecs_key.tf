resource "alicloud_key_pair" "example" {
  key_name   = "terraform_created_keypair_for_fortigate"
  public_key = "${file("${var.key_location}")}"
  //public_key = file("~/.ssh/id_rsa.pub")
}


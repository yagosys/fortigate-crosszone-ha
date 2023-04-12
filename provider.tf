terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.202.0"
    }
  }
}

provider "alicloud" {
	profile = var.account_region== "china" ? "andywang" : "default"
  	region  = var.region
}



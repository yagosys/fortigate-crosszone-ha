terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.202.0"
    }
  }
}

provider "alicloud" {
	profile = "default"
  	region  = var.region
}



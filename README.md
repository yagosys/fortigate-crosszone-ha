please modify intl.auto.tfvars before deploy

```
terraform version
Terraform v1.0.11
on linux_amd64
+ provider registry.terraform.io/hashicorp/alicloud v1.160.0
+ provider registry.terraform.io/hashicorp/random v3.1.2
+ provider registry.terraform.io/hashicorp/time v0.7.2

```
how to run
```
terraform init

terraform apply 

```
sample output
```
ActiveFortigateEIP3 = [
  "8.217.33.179",
]
PrimaryFortigateAdminGUI_PORT = "8443"
PrimaryFortigateAvailability_zone = "cn-hongkong-b"
PrimaryFortigateID = "i-j6c65wc46pkblisfb7az"
PrimaryFortigatePrivateIP = "192.168.11.11"
PrimaryFortigatePublicIP = ""
PrimaryFortigate_MGMT_EIP = [
  "8.217.38.236",
]
PrimaryFortigateport2IP = [
  "192.168.12.11",
]
SecondaryFortigateAdminGUI_PORT = "8443"
SecondaryFortigateAvailability_zone = [
  "cn-hongkong-c",
]
SecondaryFortigateID = [
  "i-j6c42tb88nmtg4zxua62",
]
SecondaryFortigatePrivateIP = [
  "192.168.21.12",
]
SecondaryFortigatePublicIP = [
  "",
]
SecondaryFortigate_MGMT_EIP = [
  "8.217.39.73",
]
SecondaryFortigateport2IP = [
  "192.168.22.12",
]
```

ssh into the fortigate via EIP3, the default password is instanceID

```
ssh admin@8.217.33.179  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null get sys ha  status
HA Health Status: OK
Model: FortiGate-VM64-ALI
Mode: HA A-P
Group Name: ALI-HA
Group ID: 0
Debug: 0
Cluster Uptime: 0 days 0:3:21
Cluster state change time: 2023-04-12 16:22:46
Primary selected using:
    <2023/04/12 16:22:46> vcluster-1: FGVMULTM23000022 is selected as the primary because its uptime is larger than peer member FGVMULTM23000023.
    <2023/04/12 16:22:37> vcluster-1: FGVMULTM23000022 is selected as the primary because it's the only member in the cluster.
ses_pickup: enable, ses_pickup_delay=disable
override: disable
unicast_hb: peerip=192.168.23.12, myip=192.168.13.11, hasync_port='port3'
Configuration Status:
    FGVMULTM23000022(updated 0 seconds ago): in-sync
    FGVMULTM23000023(updated 1 seconds ago): out-of-sync
System Usage stats:
    FGVMULTM23000022(updated 0 seconds ago):
        sessions=18, average-cpu-user/nice/system/idle=0%/0%/0%/100%, memory=10%
    FGVMULTM23000023(updated 1 seconds ago):
        sessions=11, average-cpu-user/nice/system/idle=0%/0%/0%/100%, memory=10%
HBDEV stats:
    FGVMULTM23000022(updated 0 seconds ago):
        port3: physical/00, up, rx-bytes/packets/dropped/errors=472954/1392/0/0, tx=831262/1555/0/0
    FGVMULTM23000023(updated 1 seconds ago):
        port3: physical/00, up, rx-bytes/packets/dropped/errors=829534/1550/0/0, tx=470108/1383/0/0
Primary     : ali-fgt-active  , FGVMULTM23000022, HA cluster index = 1
Secondary   : ali-fgt-passive , FGVMULTM23000023, HA cluster index = 0
number of vcluster: 1
vcluster 1: work 192.168.13.11
Primary: FGVMULTM23000022, HA operating index = 0
Secondary: FGVMULTM23000023, HA operating index = 1

ali-fgt-active # 
```

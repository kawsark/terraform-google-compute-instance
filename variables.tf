variable "region" {
  default = "us-east1"
}

variable "num_servers" {
  default = "1"
}

variable "name_prefix" {
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "user_data" {
  default = ""
}

variable "disk_type" {
  default = "pd-ssd"
}

variable "disk_size" {
  default = "20"
}

variable "disk_image" {
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "subnetwork" {
  default = "default"
}

variable "startup_script" {
  default = <<EOF
#This is a startup-script that will install an example application on the provisioned server
#!/bin/bash
sudo apt-get install git -y
cd /tmp
git clone https://github.com/hashicorp/demo-terraform-101.git
cp -r demo-terraform-101/assets .
cd assets
sudo chmod +x ./setup-web.sh
sudo ./setup-web.sh
EOF
}


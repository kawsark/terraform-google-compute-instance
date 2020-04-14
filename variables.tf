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
#! /bin/bash
apt-get update
apt-get install -y apache2
cat <<EOF > /var/www/html/index.html
<html><body><h1>Hello World</h1>
<p>This page was created from a simple startup script!</p>
</body></html>
EOF

}


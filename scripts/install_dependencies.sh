#!/bin/bash
set -e

echo "Installing Nginx..."

if command -v yum >/dev/null 2>&1; then
  yum update -y
  yum install -y nginx
elif command -v apt-get >/dev/null 2>&1; then
  apt-get update -y
  apt-get install -y nginx
else
  echo "Unsupported package manager"
  exit 1
fi

systemctl enable nginx

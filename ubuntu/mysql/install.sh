#!/bin/bash

# 检测 MySQL 是否已经安装
if [ -x "$(command -v mysql)" ]; then
  echo "MySQL is already installed on this system. Skipping installation."
  exit 0
fi

# 更新软件包列表
sudo apt-get update

# 安装 MySQL 服务器
sudo apt-get install -y mysql-server

# 启动 MySQL 服务器
sudo service mysql start

# 设置默认密码
sudo mysqladmin -u root password 123456

# 自动启动 MySQL 服务器
sudo update-rc.d mysql defaults
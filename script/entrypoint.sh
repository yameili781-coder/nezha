#!/bin/sh

# 设置 DNS
printf "nameserver 127.0.0.11\nnameserver 8.8.4.4\nnameserver 223.5.5.5\n" > /etc/resolv.conf

# 修复 app 权限
chmod 755 /dashboard/app

# 运行应用
exec /dashboard/app

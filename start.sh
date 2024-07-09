#!/bin/sh

/app/tailscaled --tun=userspace-networking --socks5-server=localhost:1055 &
/app/tailscale up --authkey=${tskey-auth-kPYUZi9NGZ11CNTRL-QRpj7usKcoYhPcH9uUHbsYFp34LZpYc2} --hostname=cloudrun-app
echo Tailscale started
ALL_PROXY=socks5://localhost:1055/ /app/my-app


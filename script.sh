#!/bin/sh
cat > Caddyfile <<EOF
$1
reverse_proxy 127.0.0.1:8080
EOF
mv Caddyfile /etc/caddy/Caddyfile
caddy run --config /etc/caddy/Caddyfile
nohup code-server &

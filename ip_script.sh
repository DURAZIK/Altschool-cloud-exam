#!/bin/bash
echo "Content-Type: text/html"
echo ""
IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)  # AWS metadata for private IP
cat <<EOF
<!DOCTYPE html>
<html>
<head><title>Instance IP</title></head>
<body>
<h1>Hello from EC2!</h1>
<p>Instance Private IP: $IP</p>
</body>
</html>
EOF

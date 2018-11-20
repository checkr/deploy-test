#!/bin/bash

# test docker builder

r=$(( $RANDOM % 255 ))
g=$(( $RANDOM % 255 ))
b=$(( $RANDOM % 255 ))

cat << EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Welcome to ${DEPLOYTEST}</title>
<style>
    body {
    	background-color: rgb(${r},${g},${b});
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to ${DEPLOYTEST}!</h1>
<h2>version B</h2>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>Coming to a theater near you in 2020</p>
<p><em>Thank you for using nginx.</em></p>
</body>
</html>
EOF

if [[ ! -z "$ENV_TEST" ]]; then 
	echo "Exiting due to lack of environment variable: ENV_TEST" > /dev/stderr
	exit 123
fi

if [[ ! -f /etc/secrets/secrets-test.txt ]]; then
	echo "Exiting due to lack of secrets file: /etc/secrets/secrets-test.txt" > /dev/stderr
	exit 123
fi

exec /usr/sbin/nginx -g "daemon off;"

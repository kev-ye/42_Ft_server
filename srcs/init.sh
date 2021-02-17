# Init configuration #
mkdir /etc/nginx/ssl

# Creat ssl certificate #
## req :            creat certificate siging request
## -x509 :          sign
## -newkey rsa :    encrypt with rsa (4096 bytes)
## -sha256 :        hash with sha256
## -nodes :         no ask encryption when creat private key
## -keyout :        output key file(.pem)
## -out :           output certificate file
## -days :          valid period
## -subj :          information "/CN=Country name/ST=State/L=Locality/O=Organization/OU=Organization unit/CN=Common/emailAddress=Email"
openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout key.pem -out cert.pem -days 3650 -subj "/CN=FR/ST=Paris/L=Paris/O=42/OU=42/CN=kaye"

# Move key file in nginx repository
move key.pem /etc/nginx/ssl
move cert.pem /etc/nginx/ssl
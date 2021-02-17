# Creat ssl certificate #
## req :    creat certificate
## -x509 :  sign 
openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout key.pem -out cert.pem -days 3650 -subj "/CN=FR/ST=Paris/L=Paris/O=42/OU=42/CN=kaye"
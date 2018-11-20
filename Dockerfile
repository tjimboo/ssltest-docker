#1811008
FROM nginx:alpine
COPY index.html /etc/nginx/html/ 
COPY nginx.conf /etc/nginx/
COPY ssltest.conf /etc/nginx/conf.d/
COPY certificate.key /etc/nginx/certificates/
COPY certificate.crt /etc/nginx/certificates/
COPY dhparam.pem /etc/nginx/certificates/

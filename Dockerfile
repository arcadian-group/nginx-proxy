FROM jwilder/nginx-proxy
LABEL maintainer="dylan@arcadiandigital.com.au"
RUN { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 100m;'; \
    } > /etc/nginx/conf.d/my_proxy.conf

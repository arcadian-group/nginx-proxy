# nginx-proxy

jwilder's nginx-proxy with `server_tokens off` and `client_max_body_size 100m`.

All credits to https://github.com/jwilder/nginx-proxy

## Usage

```
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro \
  --name nginx-proxy arcadiandigital/nginx-proxy
```

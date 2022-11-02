# nginx-proxy

jwilder's nginx-proxy with `server_tokens off` and `client_max_body_size 100m`.

All credits to https://github.com/jwilder/nginx-proxy

## Usage

```
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro \
  --restart always --name nginx-proxy arcadiandigital/nginx-proxy
```

## Config update
The following code has been added to the Dockerfile, due to there was a failing to build on CitiPower running WordPress 6.
There are people mentioning on the internet that after upgrading to WP 6, they needed to increase the buffer size of NGINX,
in order for their site to run propertly. This has also been tested on John's machine and it worked. Since, I am unsure
whether this is correlated so a tag is created on this image so that it will not affect other projects.

On Prod or Staging, we can add a file - `proxy_buffer.conf` into `/etc/nginx/conf.d` with the following code
```
proxy_busy_buffers_size 32k;
proxy_buffers 16 32k;
proxy_buffer_size 16k;
```

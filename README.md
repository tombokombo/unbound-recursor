```shell
docker build -t unbound-recurse .
docker run -p 53:53/tcp -d unbound-recurse
```

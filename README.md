# binfmtd

Docker container that registers binfmt support and keeps running after.

Usefull to register binfmt support automatically after every reboot:

```
docker run -d --privileged --name=binfmtd --restart=always weberlars/binfmtd
```

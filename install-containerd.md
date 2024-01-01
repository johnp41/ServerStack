```
VERSION=1.7.11 
OS=linux     
ARCH=arm64 

echo "The url will be https://github.com/containerd/containerd/releases/download/v${VERSION}/containerd-${VERSION}-${OS}-${ARCH}.tar.gz"

curl -sSfL "https://github.com/containerd/containerd/releases/download/v${VERSION}/containerd-${VERSION}-${OS}-${ARCH}.tar.gz" > containerd.tar.gz
tar Cxzvf /usr/local containerd.tar.gz

wget https://raw.githubusercontent.com/containerd/containerd/main/containerd.service

mv containerd.service /usr/local/lib/systemd/system/containerd.service

systemctl daemon-reload
systemctl enable --now containerd

rm containerd.tar.gz
```


```
VERSION=1.1.10
ARCH=arm64  


curl -sSfL "https://github.com/opencontainers/runc/releases/download/v${VERSION}/runc.${ARCH}" > runc

install -m 755 runc /usr/local/sbin/runc

```


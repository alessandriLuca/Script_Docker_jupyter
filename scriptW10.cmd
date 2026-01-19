docker run --platform linux/amd64 -itv \path\to\folder:/sharedFolder -v /var/run/docker.sock:/var/run/docker.sock --privileged=true -p 8888:8888 repbioinfo/informatica22-23

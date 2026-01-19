if test -f "./configurationFile.txt"; then
echo "$FILE exists."
else
pwd > configurationFile.txt
fi
tt=$(head configurationFile.txt)
mkdir $tt
cp ./configurationFile.txt $tt
rm $tt/id.txt
docker run --platform linux/amd64 -itv $tt:/sharedFolder -v /var/run/docker.sock:/var/run/docker.sock --privileged=true -p  8888:8888 repbioinfo/informatica22-23

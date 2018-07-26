
# From https://blogs.msdn.microsoft.com/commandline/2017/12/08/cross-post-wsl-interoperability-with-docker/


go get -d github.com/jstarks/npiperelay
GOOS=windows go build -o /c/Users/siriuz/go/bin/npiperelay.exe github.com/jstarks/npiperelay

sudo ln -s /c/Users/siriuz/go/bin/npiperelay.exe /usr/local/bin/npiperelay.exe

sudo usermod -aG docker siriuz

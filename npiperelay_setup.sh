
# From https://blogs.msdn.microsoft.com/commandline/2017/12/08/cross-post-wsl-interoperability-with-docker/

# Additional instructions for starting it on boot:

# set docker-relay permissions to 111 (only execute no write)
# sudo visudo, add entry "ALL ALL=NOPASSWD: /home/siriuz/docker-relay"
# add %windir%\System32\bash.exe -c "sudo /home/siriuz/docker-relay" to windows task scheduler on startup

go get -d github.com/jstarks/npiperelay
GOOS=windows go build -o /c/Users/siriuz/go/bin/npiperelay.exe github.com/jstarks/npiperelay

sudo ln -s /c/Users/siriuz/go/bin/npiperelay.exe /usr/local/bin/npiperelay.exe

sudo usermod -aG docker siriuz

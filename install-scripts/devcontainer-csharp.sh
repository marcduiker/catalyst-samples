printf "\n\nHold on, we're installing some tools and building the project...\n\n"
sudo apt-get update
# xdg-utils is used to allow access to the default browser
sudo apt-get install -y xdg-utils
curl -o- https://downloads.diagrid.io/cli/install-catalyst.sh | bash
sudo mv ./diagrid /usr/local/bin
diagrid update --approve
dotnet build ./csharp
# install required packages to run salt
echo "Installing add-apt-repository dependencies"
apt-get install -y software-properties-common python-software-properties build-essential
apt-get update

echo "Adding saltstack repository"
add-apt-repository -y ppa:saltstack/salt 
sudo apt-get update

# install text editor
echo "Installing VIM text editor"
apt-get install -y vim 

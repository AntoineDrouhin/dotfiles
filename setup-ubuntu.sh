sudo apt update


echo 'Install zsh git curl'

sudo apt install zsh git curl

echo 'Install oh-my-zsh'

sh -c "$(curl -fssl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'Create symlinks'

# Get script location
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -s $(echo $DIR)/.vimrc ~/.vimrc

ln -s $(echo $DIR)/.zshrc ~/.zshrc

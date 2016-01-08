# Automation for installed the software
# and dot files I used on the reg.

function message {
	G='\033[0;32m'
	NC='\033[0m'
	printf "${G}$1${NC}\n"
}

# Installs packages managed by brew
function install_brews {
	message "Installing your brews"
	brew doctor
	brew update
	brew install carthage
	brew install tree
	brew install unrar
	brew install fpp
	brew install flow
	brew install mysql
	brew install python
	brew install node
	brew install npm
	brew install rbenv ruby-build
	brew install watchman
	brew install openssl
	brew install re2c
	brew install postgresql
}

function install_gems {
	message "Installing Gems"
	gem install cocoapods
	gem install pry
	gem install sinatra
	gem install bourbon
	gem install neat
	gem install sass
	gem install rails
}

function install_node_modules {
	message "Installing node modules"
	npm install -g bower
	npm install -g gulp
	npm install -g lorem-ipsum
	npm install -g http-server
}


function casks {
	# brew cask install alfred
	# brew cask install dropbox
	# brew cask install google-chrome
	# brew cask install sketch
	# brew cask install github
	# brew cask install sublime
	# brew cask install atom
	brew cask install slate
	# brew cask install spotify
	# brew cask install karabiner
	# brew cask install seil
	# brew cask install firefox
	# brew cask install dash
	# brew cask install drop-to-gif
}

function atom_step {
 apm install atom-alignment
 apm install atom-beautify
 apm install color-picker
 apm install monokai
 apm install set-syntax
 apm install spell-check
}

message "Let's make you more like Matt..."

# ZSH
echo "installing oh my zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


# Brew 
message "Installling Brew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
message "Brew install completed"

echo "----------------------"

message "Installing your Homebrews"
install_brews
message "Homebrews install completed"

echo "-----------------"

# Gems
message "Installing ruby gems"
install_gems
message "Ruby gems install completed"

echo "-----------------"

# Node packages
message "Installing node packages"
install_node_modules
message "Finished install node modules"

# Apps via cask
message "Installign apps"
casks
message "apps installed"

# Pull my slate file from github
touch "~/.slate.js"
curl https://raw.githubusercontent.com/jigish/dotfiles/master/slate.js | cat > .slate.js


# the fuck
echo "installing the fuck"
sudo pip install thefuck

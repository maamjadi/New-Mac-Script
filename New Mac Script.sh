# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# oh-my-zsh Terminal
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Packages
brew install jenv
brew install pyenv
brew install rbenv
brew install wget
brew install postgresql
brew install go
brew install node
brew install ant
brew install ffmpeg
brew install eigen
brew install opencv
brew install git
brew install python
brew install cocoapods
brew install carthage
brew install rome
brew install nvm
brew install watchman
brew install imagemagick
brew install swiftlint
brew install xcinfo
brew install git-lfs
brew install mint
brew install sass/sass/sass

# Gems
gem install fastlane
gem install xcode-install

# Apps
brew cask install skype
brew cask install spotify
brew cask install google-chrome
brew cask install slack
brew cask install microsoft-office
brew cask install microsoft-teams
brew cask install zoomus
brew cask install zoomus-outlook-plugin
brew cask install commander-one
brew cask install appcleaner
brew cask install cyberduck
brew cask install tunnelblick
brew cask install postman
brew cask install visual-studio-code
brew cask install sourcetree
brew cask install zeplin
brew cask install charles
brew cask install java
brew cask install vysor
brew cask install keka
brew cask install webpquicklook
brew cask install quicklook-json
brew cask install qlvideo
brew cask install qlmarkdown

# iOS
xcversion install 12.3

sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

export COCOAPODS_DISABLE_STATS=true

# Android
mkdir -p $HOME/.gradle && touch $HOME/.gradle/gradle.properties
cp -v $HOME/.gradle/gradle.properties $HOME/.gradle/gradle.properties-macosi_$(date +%s)
echo "org.gradle.daemon=true" > $HOME/.gradle/gradle.properties
echo "org.gradle.jvmargs=-Xmx4g" >> $HOME/.gradle/gradle.properties
echo "org.gradle.parallel=true" >> $HOME/.gradle/gradle.properties
echo "org.gradle.configureondemand=true" >> $HOME/.gradle/gradle.properties

eval "$(jenv init -)"
export PATH=$PATH:~/Library/Android/sdk/tools
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export ANDROID_HOME=~/Library/Android/sdk

#Frontend
mkdir -p $HOME/.nvm
export NVM_DIR="$HOME/.nvm" && . /usr/local/opt/nvm/nvm.sh && nvm install node

export NVM_DIR="$HOME/.nvm"
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then . "/usr/local/opt/nvm/nvm.sh"; fi

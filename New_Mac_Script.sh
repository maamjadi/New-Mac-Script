#!/bin/bash

# Homebrew
printf "✅ Homebrew Installation"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# oh-my-zsh Terminal
printf "✅ oh-my-zsh Installation"
brew install zsh
printf "⛔️ Navigate to directory where New_Mac_Script.sh is Located on terminal!!  "
printf " e.g. cd [MY PATH]!!"
printf "✅ oh-my-zsh Plugin Setup"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
printf "✅ oh-my-zsh Font Setup"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

printf "✅ Replace .zshrc  "
sudo cp -f .zshrc ~/.zshrc 

# Packages
printf "✅ Packages Installation"
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
brew install nvmve
brew install watchman
brew install imagemagick
brew install swiftlint
brew install xcinfo
brew install git-lfs
brew install mint
brew install sass/sass/sass

# Gems
printf "✅ Gems Installation"
sudo gem install fastlane
sudo gem install xcode-install

# Apps
printf "✅ Apps Installation"
brew install skype
brew install spotify
brew install google-chrome
brew install slack
brew install microsoft-office
brew install microsoft-teams
brew install zoom
brew install zoom-outlook-plugin
brew install commander-one
brew install appcleaner
brew install cyberduck
brew install tunnelblick
brew install postman
brew install visual-studio-code
brew install sourcetree
brew install zeplin
brew install charles
brew install java
brew install vysor
brew install keka
brew install webpquicklook
brew install quicklook-json
brew install qlvideo
brew install qlmarkdown

# iOS
printf "✅ iOS Setup"
xcversion install 13.2.1

sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

export COCOAPODS_DISABLE_STATS=true

# Android
printf "✅ Android Setup"
sudo mkdir -p $HOME/.gradle && touch $HOME/.gradle/gradle.properties
sudo cp -v $HOME/.gradle/gradle.properties $HOME/.gradle/gradle.properties-macosi_$(date +%s)
sudo echo "org.gradle.daemon=true" > $HOME/.gradle/gradle.properties
sudo echo "org.gradle.jvmargs=-Xmx4g" >> $HOME/.gradle/gradle.properties
sudo echo "org.gradle.parallel=true" >> $HOME/.gradle/gradle.properties
sudo echo "org.gradle.configureondemand=true" >> $HOME/.gradle/gradle.properties

eval "$(jenv init -)"
export PATH=$PATH:~/Library/Android/sdk/tools
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export ANDROID_HOME=~/Library/Android/sdk

#Frontend
printf "✅ Frontend Setup"
sudo mkdir -p $HOME/.nvm
export NVM_DIR="$HOME/.nvm" && . /usr/local/opt/nvm/nvm.sh && nvm install node

export NVM_DIR="$HOME/.nvm"
if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then . "/usr/local/opt/nvm/nvm.sh"; fi

exit 0

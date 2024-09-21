#!/bin/sh

cp .vimrc ~

# vim settings
cp -r colors ~/.vim
cp -r settings ~/.vim

# vim plugins
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
git clone https://github.com/lambdalisue/fern.vim ~/.vim/pack/vendor/start/fern
git clone https://github.com/cohama/lexima.vim ~/.vim/pack/vendor/start/lexima

# bashrc
echo "alias ls='ls -al'" >> ~/.bashrc

echo "alias tfi='terraform init'" >> ~/.bashrc
echo "alias tfv='terraform validate'" >> ~/.bashrc
echo "alias tfp='terraform plan'" >> ~/.bashrc
echo "alias tfa='terraform apply -auto-approve'" >> ~/.bashrc
echo "alias tfd='terraform destroy -auto-approve'" >> ~/.bashrc

echo "alias ga='git add'" >> ~/.bashrc 
echo "alias gc='git commit'" >> ~/.bashrc 
echo "alias gp='git push'" >> ~/.bashrc 

source ~/.bashrc


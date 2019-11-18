#!/bin/sh

echo "Welcome to your bespoke nail booker."
# make a distribution directory
mkdir -p dist
# copy Ruby files to the distribution directory
cp ./bespoke_nail_booker.rb ./dist
cp ./methods.rb ./dist
cp ./data.rb ./dist
cp ./nail_shape.txt ./dist
cp ./nail_art.txt ./dist
# install required gems
gem install rainbow
gem install tty-prompt
gem install valid_email2
echo "Please enter the name of your nail salon in quotations('') next to the command 'ruby bespoke_nail_booker.rb'"




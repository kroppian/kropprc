

def fail(message)

  puts "#{message}. Exiting"
  exit 1

end

puts 'Checking for vim...'
`vim --version`
fail 'vim not installed. Install and start the setup again' if not $?.success?



puts 'Creating the .vim directory...'
`mkdir -p ~/.vim/bundle`
fail "Failed to create the .vim directory" if not $?.success?

puts 'Attempting to clone Vundle...'
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
fail "Failed to clone Vundle." if not $?.success?

puts ' Copying .vimrc directory...'
`cp  vimrc ~/.vimrc`
fail "Failed to deploy .vimrc" if not $?.success?

puts 'Success! Looking for curl...'
`curl --version`
fail "curl not installed. Install curl before continuing" if not $?.success?

puts 'Success! Looking for zsh...'
blah=`zsh --version`
fail "zsh not installed. Install zsh before continuing" if not $?.success?

puts 'Success! Downloading Oh My Zsh...'
blah=`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
print blah
fail "Failed to download Oh My Zsh." if not $?.success?

puts 'Success! Copying zshrc...'
`cp zshrc ~/.zshrc`
fail "Failed to deploy zshrc" if not $?.success?

puts 'Over all success! Happy hacking!'

exit 0


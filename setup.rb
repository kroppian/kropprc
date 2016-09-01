

def fail(message)

  puts "#{message}. Exiting"
  exit 1

end



puts 'Copying .vim directory...'
`cp -R vim ~/.vim`
fail "Failed to deploy .vim directory" if not $?.success?

puts 'Success! Copying .vimrc directory...'
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


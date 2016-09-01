

def fail(message)

  puts "#{message}. Exiting"
  exit 1

end



puts 'Copying .vim directory...'
`cp -iR vim ~/.vim`
fail "Failed to deploy .vim directory" if not $?.success?

puts 'Success! Copying .vimrc directory...'
`cp -i vimrc ~/.vimrc`
fail "Failed to deploy .vimrc" if not $?.success?

puts 'Success! Downloading Oh My Zsh...'
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
fail "Failed to download Oh My Zsh." if not $?.success?

puts 'Success! Copying zshrc...'
`cp -i zshrc ~/.zshrc`
fail "Failed to deploy zshrc" if not $?.success?

puts 'Over all success! Happy hacking!'

exit 0


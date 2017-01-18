

def fail(message)

  puts "#{message}. Exiting"
  exit 1

end

scriptDir = File.dirname(__FILE__);

home = ENV['HOME'];

puts 'Checking for vim...'
`vim --version`
fail 'vim not installed. Install and start the setup again' if not $?.success?


  puts 'Creating the .vim directory...'
  `mkdir -p #{home}/.vim/bundle`
  fail "Failed to create the .vim directory" if not $?.success?


if not File.directory?("#{home}/.vim/bundle/Vundle.vim")

  puts 'Attempting to clone Vundle...'
  `git clone https://github.com/VundleVim/Vundle.vim.git #{home}/.vim/bundle/Vundle.vim`
  fail "Failed to clone Vundle." if not $?.success?

else 
  puts 'Vundle already deployed'

end

puts 'Copying .vimrc directory...'
`cp  #{scriptDir}/vimrc #{home}/.vimrc`
fail "Failed to deploy .vimrc" if not $?.success?

puts 'Looking for curl...'
`curl --version`
fail "curl not installed. Install curl before continuing" if not $?.success?

puts 'Looking for zsh...'
`zsh --version`
fail "zsh not installed. Install zsh before continuing" if not $?.success?

if not File.exists?("#{home}/.oh-my-zsh")
  puts 'Downloading Oh My Zsh...'
  `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";`
  fail "Failed to download Oh My Zsh." if not $?.success?
else 
  puts 'Oh My Zsh already deployed'
end

if not File.exists?("#{home}/.rbenv")
  puts 'Downloading rbenv...'
  `git clone https://github.com/rbenv/rbenv.git #{home}/.rbenv`
  fail "Failed to download rbenv." if not $?.success?
  
  puts 'Attempting to compile the dynamic bash extention...'
  `cd #{home}/.rbenv && src/configure && make -C src`
  puts "Failed to download rbenv, but moving on." if not $?.success?
else 
  puts 'rbenv already deployed'
end

if not File.exists?("#{home}/.rbenv/plugins/ruby-build")
  puts 'Downloading ruby-build...'
  `git clone https://github.com/rbenv/ruby-build.git #{home}/.rbenv/plugins/ruby-build`
  fail "Failed to download ruby-build." if not $?.success?
else 
  puts 'ruby-build already deployed'
end

puts 'Copying zshrc...'
`cp #{scriptDir}/zshrc #{home}/.zshrc`
fail "Failed to deploy zshrc" if not $?.success?

puts 'Copying tmux.conf...'
`cp #{scriptDir}/tmux.conf #{home}/.tmux.conf`
fail "Failed to deploy tmux.conf" if not $?.success?

puts 'Copying gitconfig...'
`cp #{scriptDir}/gitconfig #{home}/.gitconfig`
fail "Failed to deploy gitconfig" if not $?.success?

puts 'Over all success! Happy hacking!'

exit 0


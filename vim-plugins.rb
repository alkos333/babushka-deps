dep 'editorconfig-vim' do
  requires 'pathogen'
  met? {
    "~/.vim/bundle/editorconfig-vim".p.exists?
  }
  meet {
    shell "cd ~/.vim/bundle && git clone https://github.com/editorconfig/editorconfig-vim.git"
  }
end

dep "editorconfig-vim" do
  requires "vim-pathogen"
  met? {
    "~/.vim/bundle/editorconfig-vim".p.exists?
  }
  meet {
    shell "cd ~/.vim/bundle && git clone https://github.com/editorconfig/editorconfig-vim.git"
  }
end

dep "vim-flake8" do
  requires "vim-pathogen"
  met? {
    "~/.vim/bundle/vim-flake8".p.exists?
  }
  meet {
    shell "cd ~/.vim/bundle && git clone https://github.com/nvie/vim-flake8.git"
  }
end

dep "vim-nerdtree" do
  requires "vim-pathogen"
  met? {
    "~/.vim/bundle/nerdtree".p.exists?
  }
  meet {
    shell "cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git"
  }
end

dep "vim-plugins" do
  requires "editorconfig-vim",
           "vim-flake8",
           "vim-nerdtree"
end

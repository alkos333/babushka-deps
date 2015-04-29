dep "vim dir" do
  met? {
    "~/.vim".p.exists?
  }
  meet {
    shell "mkdir ~/.vim"
  }
end

dep "vim-autoload-dir" do
  requires "vim dir"
  met? {
    "~/.vim/autoload".p.exists?
  }
  meet {
    shell "mkdir -p ~/.vim/autoload"
  }
end

dep "vim-bundle-dir" do
  requires "vim dir"
  met? {
    "~/.vim/bundle".p.exists?
  }
  meet {
    shell "mkdir -p ~/.vim/bundle"
  }
end

dep "vim-pathogen" do
  requires "vim-autoload-dir"
  requires "vim-bundle-dir"
  met? {
    "~/.vim/autoload/pathogen.vim".p.exists?
  }
  meet {
    shell "curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
  }
end

dep "vim-vundle" do
  requires "vim-bundle-dir"
  vundle_path = "~/.vim/bundle/Vundle.vim"
  met? {
    vundle_path.p.exists?
  }
  meet {
    shell "git clone https://github.com/gmarik/Vundle.vim.git " + vundle_path
  }
end

dep "vim" do
  requires "vim-pathogen"
  requires "vim-vundle"
end

dep "flake8.pip"

dep "virtualenv.pip"

dep "nose.pip" do
  provides "nosetests"
end

dep "nose_machineout" do
  requires "nose.pip"
  met? {
    shell? "pip -q show nose-machineout"
  }
  meet {
   shell "pip install git+git://github.com/nvie/nose-machineout.git#egg=nose_machineout"
  }
end

dep "vim_bridge" do
  requires "vim"
  met? {
    shell? "pip -q show vim-bridge"
  }
  meet {
    shell "pip install vim_bridge"
  }
end

dep "ipython.pip" do
  provides "ipython"
end

dep "python" do
  requires "flake8.pip", 
           "virtualenv.pip",
           "vim-flake8",
           "nose.pip",
           "vim_bridge",
           "ipython.pip"
end

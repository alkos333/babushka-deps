dep "wget.bin" do
  provides "wget"
end

dep "tmux.bin" do
  provides "tmux"
end

dep "tree.bin" do
  provides "tree"
end

dep "fswatch.bin" do
  provides "fswatch"
end

dep "pssh.bin" do
  provides "pssh"
end

dep "mosh.bin" do
  provides "mosh"
end

dep "unrar.bin" do
  provides "unrar"
end

dep "p7zip.bin" do
  provides "7z"
end

dep "http-prompt.pip" do
  provides "http-prompt"
end

dep "misc-nix-utils" do
  requires "wget.bin"
  requires "tmux.bin"
  requires "tree.bin"
  requires "fswatch.bin"
  requires "pssh.bin"
  requires "mosh.bin"
  requires "unrar.bin"
  requires "p7zip.bin"
  requires "http-prompt.pip"
end

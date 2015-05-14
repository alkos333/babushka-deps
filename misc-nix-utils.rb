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

dep "misc-nix-utils" do
  requires "wget.bin"
  requires "tmux.bin"
  requires "tree.bin"
  requires "fswatch.bin"
end

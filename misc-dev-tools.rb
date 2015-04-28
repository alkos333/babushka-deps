dep "wget.bin" do
  provides "wget"
end

dep "tmux.bin" do
  provides "tmux"
end

dep "misc-dev-tools" do
  requires "wget.bin"
  requires "tmux.bin"
end


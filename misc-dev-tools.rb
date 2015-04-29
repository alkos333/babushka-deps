dep "wget.bin" do
  provides "wget"
end

dep "jq.bin" do
  provides "jq"
end

dep "tmux.bin" do
  provides "tmux"
end

dep "thefuck.bin" do
  provides "thefuck"
end

dep "misc-dev-tools" do
  requires "wget.bin"
  requires "jq.bin"
  requires "tmux.bin"
  requires "thefuck.bin"
end

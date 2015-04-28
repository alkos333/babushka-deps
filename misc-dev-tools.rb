dep "wget.bin" do
  provides "wget"
end

dep "jq.bin" do
  provides "jq"
end

dep "tmux.bin" do
  provides "tmux"
end

dep "misc-dev-tools" do
  requires "wget.bin"
  requires "jq.bin"
  requires "tmux.bin"
end

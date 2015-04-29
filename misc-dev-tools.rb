dep "wget.bin" do
  provides "wget"
end

dep "jq.bin" do
  provides "jq"
end

dep "tmux.bin" do
  provides "tmux"
end

dep "howdoi.pip" do
  provides "howdoi"
end

dep "boot2docker.bin" do
  provides "boot2docker"
end


dep "misc-dev-tools" do
  requires "wget.bin"
  requires "jq.bin"
  requires "tmux.bin"
  requires "howdoi.pip"
  requires "boot2docker.bin"
end

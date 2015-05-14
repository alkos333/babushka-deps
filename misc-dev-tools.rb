dep "jq.bin" do
  provides "jq"
end

dep "howdoi.pip" do
  provides "howdoi"
end

dep "boot2docker.bin" do
  provides "boot2docker"
end

dep "fig.bin" do
  provides "fig"
end


dep "misc-dev-tools" do
  requires "jq.bin"
  requires "howdoi.pip"
  requires "boot2docker.bin"
  requires "fig.bin"
end

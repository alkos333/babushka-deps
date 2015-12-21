dep "jq.bin" do
  provides "jq"
end

dep "fig.bin" do
  provides "fig"
end

dep "freetds.bin" do
  provides "freebcp"
end

dep "colordiff.bin" do
  provides "colordiff"
end

dep "misc-dev-tools" do
  requires "jq.bin"
  requires "fig.bin"
  requires "freetds.bin"
  requires "colordiff.bin"
end

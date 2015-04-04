dep "wget.bin" do
  provides "wget"
end

dep "jq.bin" do
  provides "jq"
end

dep "misc-dev-tools" do
  requires "wget.bin"
  requires "jq.bin"
end

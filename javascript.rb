dep "node.bin" do
  provides "node"
end

dep "javascript" do
  requires "node.bin"
end

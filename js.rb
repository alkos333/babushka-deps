dep "npm.bin" do
  provides "npm"
end

dep "js" do
  requires "npm.bin"
end

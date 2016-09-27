dep "ccm.bin" do
  provides "ccm"
end

dep "cassandra" do
  requires "ccm.bin"
end

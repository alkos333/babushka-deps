dep "wget.bin" do
  provides "wget"
end

dep "misc-dev-tools" do
  requires "wget.bin"
end

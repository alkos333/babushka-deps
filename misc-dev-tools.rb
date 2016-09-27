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

dep "chromedriver.bin" do
  provides "chromedriver"
end

dep "pygments" do
  met? {
    shell? "gem list --local | grep pygments"
  }
  meet {
    shell "gem install --user-install pygments.rb"
  }
end

dep "ghi.bin" do
  requires "pygments"
  provides "ghi"
end

dep "hub.bin" do
  provides "hub"
end

dep "misc-dev-tools" do
  requires "jq.bin"
  requires "fig.bin"
  requires "freetds.bin"
  requires "colordiff.bin"
  requires "chromedriver.bin"
  requires "ghi.bin"
  requires "hub.bin"
end

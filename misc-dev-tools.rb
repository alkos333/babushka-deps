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

dep "freetds.bin" do
  provides "freebcp"
end

dep "sbt.bin" do
  provides "sbt"
end

dep "colordiff.bin" do
  provides "colordiff"
end

dep "scala.bin" do
  provides "scala"
end

dep "misc-dev-tools" do
  requires "jq.bin"
  requires "howdoi.pip"
  requires "boot2docker.bin"
  requires "fig.bin"
  requires "freetds.bin"
  requires "sbt.bin"
  requires "colordiff.bin"
  requires "scala.bin"
end

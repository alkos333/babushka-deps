dep "maven.bin" do
  provides "mvn"
end

dep "tomcat7.bin" do
  provides "catalina"
end

dep "jmeter.bin" do
  provides "jmeter"
end

dep "sbt.bin" do
  provides "sbt"
end

dep "scala.bin" do
  provides "scala"
end

dep "typesafe-activator.bin" do
  provides "activator"
end

dep "java8" do
  # TODO https://goo.gl/ulz6b6
end

dep "jvm" do
  requires "maven.bin"
  requires "tomcat7.bin"
  requires "jmeter.bin"
  requires "sbt.bin"
  requires "scala.bin"
  requires "typesafe-activator.bin"
end

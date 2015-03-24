dep "maven.bin" do
  provides "mvn"
end

dep "tomcat7.bin" do
  provides "catalina"
end

dep "jmeter.bin" do
  provides "jmeter"
end

dep "java8" do
  # TODO 
end

dep "java" do
  requires "maven.bin"
  requires "tomcat7.bin"
  requires "jmeter.bin"
end

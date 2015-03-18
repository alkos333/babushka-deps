dep "maven.bin" do
  provides "mvn"
end

dep "tomcat7.bin" do
  provides "catalina"
end

dep "java8" do
  # TODO 
end

dep "java" do
  requires "maven.bin"
  requires "tomcat7.bin"
end

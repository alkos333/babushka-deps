dep "XQuartz.app" do
  met? {
    "/Applications/Utilities/XQuartz.app".p.exists? 
  }
  source "http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.7.dmg"
end

dep "Inkscape.app" do
  requires "XQuartz.app" 
  source "https://inkscape.org/en/gallery/item/3896/Inkscape-0.91-1-x11-10.7-x86_64.dmg"
end

dep "IntelliJ.app" do
  source "http://download.jetbrains.com/idea/ideaIU-14.0.3.dmg"
end

dep "Spectacle.app" do
  source "https://s3.amazonaws.com/spectacle/downloads/Spectacle+0.8.8.zip"
end

dep "VisualVM.app" do 
  source "https://java.net/projects/visualvm/downloads/download/release138/VisualVM_138.dmg"
end

dep "osx-all-apps" do
  requires "Inkscape.app"
  requires "Spectacle.app"
  requires "VisualVM.app"
end

dep "jetbrains-paid" do
  requires "IntelliJ.app" 
end

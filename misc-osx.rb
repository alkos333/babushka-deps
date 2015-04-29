dep "XQuartz.app" do
  met? {
    "/Applications/Utilities/XQuartz.app".p.exists? 
  }
  source "http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.7.dmg"
end

dep "Inkscape.app" do
#  requires "XQuartz.app" 
  source "https://inkscape.org/en/gallery/item/3896/Inkscape-0.91-1-x11-10.7-x86_64.dmg"
end

dep "Spectacle.app" do
  source "https://s3.amazonaws.com/spectacle/downloads/Spectacle+0.8.8.zip"
end

dep "HipChat.app" do
  source "https://www.hipchat.com/downloads/latest/mac"
end

dep "osx-all-apps" do
  requires "Inkscape.app"
  requires "Spectacle.app"
  requires "HipChat.app"
end
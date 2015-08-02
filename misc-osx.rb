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

dep "VirtualBox.installer" do
  source "http://download.virtualbox.org/virtualbox/4.3.26/VirtualBox-4.3.26-98988-OSX.dmg"
  provides "VirtualBox", "VBoxManage", "VBoxHeadless"
end

dep "IntelliJ.app" do
  source "https://download.jetbrains.com/idea/ideaIC-14.1.3.dmg"
end

dep "0xDBE.app" do
  source "http://download.jetbrains.com/dbe/0xdbe-142.2675.6.dmg"
end

dep "Slack.app" do
  source "https://morningstar.slack.com/ssb/download-osx"
end

dep "misc-osx" do
  requires "Inkscape.app"
  requires "Spectacle.app"
  requires "HipChat.app"
  requires "VirtualBox.installer"
  requires "IntelliJ.app"
  requires "0xDBE.app"
  requires "Slack.app"
end

dep "Spectacle.app" do
  source "https://s3.amazonaws.com/spectacle/downloads/Spectacle+0.8.8.zip"
end

dep "HipChat.app" do
  source "https://www.hipchat.com/downloads/latest/mac"
end

dep "IntelliJ.app" do
  source "https://download-cf.jetbrains.com/idea/ideaIC-2016.2.4.dmg"
end

dep "Slack.app" do
  source "https://morningstar.slack.com/ssb/download-osx"
end

dep "Spotify.app" do
  source "http://download.spotify.com/Spotify.dmg"
end

dep "YourKit.app" do
  source "https://www.yourkit.com/download/yjp-2015-build-15076-mac.zip"
end

dep "Docker.app" do
  source "https://download.docker.com/mac/stable/Docker.dmg"
end

dep "jenv.bin" do
  provides "jenv"
end

dep "misc-osx" do
  requires "Spectacle.app"
  requires "HipChat.app"
  requires "IntelliJ.app"
  requires "Slack.app"
  requires "Spotify.app"
  requires "YourKit.app"
  requires "Docker.app"
  requires "jenv.bin"
end

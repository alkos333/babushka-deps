dep 'XQuartz.app' do
  met? {
    '/Applications/Utilities/XQuartz.app'.p.exists? 
  }
  source 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.7.dmg'
end

dep 'Inkscape.app' do
  requires 'XQuartz.app' 
  source 'https://inkscape.org/en/gallery/item/3896/Inkscape-0.91-1-x11-10.7-x86_64.dmg'
end

dep 'osx-apps' do
  requires 'Inkscape.app'
end

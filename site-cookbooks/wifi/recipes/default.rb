execute "install wifi" do
  command 'cat ~/Dropbox/jbt/docs/raspberry.pi/network.setup.cfg | ssh pi@wired.jbt-pi.local "cat > /tmp/network.cfg && sudo cp /tmp/network.cfg /etc/network/interfaces"'
end
execute "apt-get update" do
  command "apt-get -y update"
  command "apt-get -y upgrade"
end

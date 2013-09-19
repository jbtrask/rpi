template "/etc/network/interfaces" do
  source "interfaces.erb"
  group "root"
  owner "root"
  mode 00644
end
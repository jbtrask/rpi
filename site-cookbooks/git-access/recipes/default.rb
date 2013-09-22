[

    { name: 'root', path: '/root/.ssh' },
    { name: node['git-access']['user'], path: "/home/#{node['git-access']['user']}/.ssh" }

].each do |user|

  [

      { name: 'config', mode: '600' },
      { name: 'known_hosts', mode: '600' },
      { name: 'github_rsa', mode: '400' },
      { name: 'github_rsa.pub', mode: '400' }

  ].each do |file|

    template "#{user[:path]}/#{file[:name]}" do
      source "#{file[:name]}.erb"
      mode file[:mode]
      owner user[:name]
      group user[:name]
    end

  end

end

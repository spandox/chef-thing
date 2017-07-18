hostname = node['hostname']
package 'fortune-mod' do
	action :install
end 

execute 'command-test0' do
        command 'echo > /etc/motd'
        only_if { ::File.exists?('/etc/motd') }
end

execute 'command-test1' do
        command 'fortune >> /etc/motd'
        only_if { ::File.exists?('/etc/motd') }
end

execute 'command-test2' do
	command 'echo -e \\\n >> /etc/motd'
        only_if { ::File.exists?('/etc/motd') }
end

execute 'command-test3' do
	command "echo Hostname: #{hostname} >> /etc/motd"
        only_if { ::File.exists?('/etc/motd') }
end

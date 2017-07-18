file 'default www' do
	path '/var/www/html/index.html'
	content 'Hello world 2.0!'
        mode '0755'
        owner 'apache'
        group 'apache'
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
	puts "===================="
	puts node
	puts "===================="
end

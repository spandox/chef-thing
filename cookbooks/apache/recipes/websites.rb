file 'default www' do
	path '/var/www/html/index.html'
	content 'Hello World!'
        mode '0755'
        owner 'apache'
        group 'apache'
end


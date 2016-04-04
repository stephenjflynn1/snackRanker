# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

client = SODA::Client.new({:domain => "data.cityofnewyork.us", :app_token => ENV["jnTt0XEVnUxT9EEJBesuyuQRR"]})



records = []
records << client.get("https://data.cityofnewyork.us/resource/xx67-kt59.json", {:zipcode => 11234})

records.each do |record|
	records.each do |r|
		restaurant = Restaurant.find_or_create_by( street: r.street, zipcode: r.zipcode,
      boro: r.boro)
	restaurant.save

end
end






# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

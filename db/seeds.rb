# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new({email: 'boo@moo.me', password: 'foo123456', password_confirmation: 'foo123456'})
user.save

page = Page.new({ 
	title: 'I am awesome', 
	content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum,
			molestias, omnis quo nemo enim voluptatum nam ullam iste repellat
			minima sunt porro iusto eaque perferendis tempore voluptate totam
			assumenda dicta?'
})

menu = Menu.new ({name: 'Main'})
menu.save

page.menus << menu
page.save

news = News.new ({title: 'Cutennes overload!', content: 'Lorem ipsum Labore sit voluptate irure est
 					reprehenderit esse occaecat officia in officia eu reprehenderit.', 
 					image: 'http://fc01.deviantart.net/fs71/f/2012/308/0/e/bunny_by_cloudyskycupcake-d5jyfcz.jpg'})

news.page = page
news.save

page2 = Page.new({ 
	title: 'Hey You', 
	content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum,
			molestias, omnis quo nemo enim voluptatum nam ullam iste repellat
			minima sunt porro iusto eaque perferendis tempore voluptate totam
			assumenda dicta? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum,
			molestias, omnis quo nemo enim voluptatum nam ullam iste repellat
			minima sunt porro iusto eaque perferendis tempore voluptate totam
			assumenda dicta?'
})

page2.menus << menu
page2.save

news2 = News.new ({title: 'Its something!', content: 'Lorem ipsum Labore sit voluptate irure est
 					reprehenderit esse occaecat officia in officia eu reprehenderit.', 
 					image: 'https://github.com/mendhak/android-ragefaces/diff_blob/30ca93a419c91a235b8538cd2f9fa4fb4bc26e65/faces/neutral_its_something.png?raw=true'})

news2.page = page
news2.save
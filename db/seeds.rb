# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Bookmark should have  url, title, comment(optional), favorite(optional)

Bookmark.create(
url: "http://generalassembly.ly",
title: "General Assembly"
#comment: "Seems like this thing might be interesting"
)

Bookmark.create(
url: "http://facebook.com",
title: "facebook"
#comment: "This is facebook"
)

Bookmark.create(
url: "http://guides.rubyonrails.org",
title: "Rails Guide"
#comment: "Our bible"
#favorite: true
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Show.destroy_all
Show.create(name: "City Hunter", player_url:'123881v', number: 2, rating: 'PG', image_url: 'http://0.viki.io/c/73b/8e3/248/city-hunter_590x330.jpg', duration: 3813)
Show.create(name: "Ghost", player_url: '188598v', number: 1, rating: 'PG', image_url: 'http://1.viki.io/c/857/08f/4ea/Ghost_banner_590x330.jpg', duration: 3814)
Show.create(name: "Sex is Zero", player_url: '156534v', number: 0, rating: 'M21', image_url: 'http://0.viki.io/c/d7b/8ac/c08/Sex-is-Zero_2.jpg', duration: 5802)
Show.create(name: 'Black Jack', player_url: '183964v', number: 1, rating: 'PG', image_url: 'http://1.viki.io/c/5851c/af0c95e374.jpg', duration: 2936)

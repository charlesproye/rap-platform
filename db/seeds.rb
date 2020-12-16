# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# https://api.spotify.com/v1

require 'rspotify'

RSpotify.authenticate("e2fe1c9ff2714fe39e0a13e435b4e5b3", "5c14f6da92b44256ae41d95775859e0d")

artists = RSpotify::Artist.search('Nekfeu')

nekfeu = artists.first
albums = nekfeu.albums



albums.each do |album_nekfeu|
  Album.create!(name: album_nekfeu.name)
end


Artist.create!(name: nekfeu.name)

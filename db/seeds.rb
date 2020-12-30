# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "discogs"

# wrapper = Discogs::Wrapper.new("My awesome web app")

# token = bRxzrsOOlaxXmOqAogVnlnRGghHjlcUwereAjuDJ
require 'rest-client'
require 'json'
require 'pry'
Album.destroy_all

token = File.read("token")
url = "https://api.discogs.com/database/search?country=japan&genre=pop&style={city%20pop}&decade=1980&token=" + token
api_response = RestClient.get(url)
api_data = JSON.parse(api_response)
api_data["results"].each do |album|
    titlearray = album["title"].split(" - ")
    artist = titlearray[0]
    albumtitle= titlearray[1]
    Album.create(
        title: albumtitle,
        artist: artist,
        year: album["year"],
        url: album["uri"],
        thumb: album["thumb"]
    )
end
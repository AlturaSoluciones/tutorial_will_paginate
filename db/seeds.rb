# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.ciata:, iso: , name:, type: , size: , longitude: , latitude: reate(name: 'Luke', movie: movies.first)
# Airport.create!(iata: "UTK", iso: "MH" , name: "Utirik Airport", airport_type: "airport" , size: "small" , longitude: "169.86667" , latitude: "11.233333")
# Airport.create!(iata: "FIV", iso: "US" , name: "Five Finger CG Heliport", airport_type: "heliport" , size: "" , longitude: "" , latitude: "")
# Airport.create!(iata: "FAK", iso: "US" , name: "False Island Seaplane Base", airport_type: "seaplanes" , size: "" , longitude: "" , latitude: "")

require 'json'

airports = JSON.parse(File.read(File.join(Rails.root, 'db', 'airports.json')))
airports.each do |airport|
    airport = OpenStruct.new airport
    Airport.create(
        iata: airport.iata,
        iso: airport.iso,
        name: airport.name,
        airport_type: airport.type,
        size: airport.size,
        longitude: airport.longitude,
        latitude: airport.latitude
    )
end
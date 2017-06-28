Singer.destroy_all
Album.destroy_all


12.times do |index|
  singer = Singer.create!(name: Faker::HitchhikersGuideToTheGalaxy.unique.planet,
                  image: "http://lorempixel.com/400/200/")
    3.times do |index|
      singer.albums.create(title: Faker::Superhero.unique.name,
                    year: Faker::Number.number(4))
    end
end

p "created #{Album.count} singers"

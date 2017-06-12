# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(
  title: 'Books of the dead',
  description:
  %{<p>
    <em>Native Apps, Multiple Platforms</em>
    Answer me dude
    </p>},
  image_url: '7apps.jpg',
  price: 25.00
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create!(
    title: 'Marker',
    description: 'A blue marker',
    image_url: 'http://images.clipartpanda.com/marker-clipart-red-dry-erase-marker-hi.png',
    price: 1.29
)
    
Product.create!(
    title: 'Paper',
    description: 'College-ruled',
    price: 0.20
)

Product.create!(
    title: 'Tablet',
    description: 'A tablet',
    price: 499.99
)

Product.create!(
    title: 'Eraser',
    description: 'Pink eraser',
    price: 0.75
)

Product.create!(
    title: 'Highlighter',
    description: 'A black highlighter',
    price: 1.89
)
    
    
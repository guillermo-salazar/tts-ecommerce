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
    image_url: 'http://images.all-free-download.com/images/graphiclarge/nexxuz_loose_leaf_paper_clip_art_23285.jpg',
    price: 0.20
)

Product.create!(
    title: 'Tablet',
    description: 'A tablet',
    image_url: 'http://sr.photos3.fotosearch.com/bthumb/CSP/CSP852/k8527509.jpg',
    price: 499.99
)

Product.create!(
    title: 'Eraser',
    description: 'Pink eraser',
    image_url: 'http://clipartzebraz.com//cliparts/eraser-clip-art/cliparti1_eraser-clip-art_06.jpg',
    price: 0.75
)

Product.create!(
    title: 'Highlighter',
    description: 'A black highlighter',
    image_url: 'http://www.clker.com/cliparts/C/V/s/C/O/8/yellow-highlighter-marker-hi.png',
    price: 1.89
)
    
    
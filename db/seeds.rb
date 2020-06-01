# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 books = Book.all

 books.each do |book|
  if book.img.present?
    puts "-----------------------"
    next
    puts "~~~~~~~~~~~~~~~~~~~~~~~"
  else
    puts "+++++++++++++++++++++++"
    book.update(img: File.open("public/images/4693.png"))
    puts "***********************"
  end
end
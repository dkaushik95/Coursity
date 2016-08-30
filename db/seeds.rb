# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
	CSV.foreach(Rails.root.join("db/seeds_data/courses.csv"), headers: true) do |row|
  	Course.find_or_create_by(c_name: row[0], price: row[1], description: row[2], prof: row[3], units: row[4])
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
require 'faker'
Transaction.delete_all

100.times do
  Transaction.create({
                       customerID: Faker::Number.number(digits: 4),
                       inputAmount: Faker::Number.decimal(l_digits: 2, r_digits: 2),
                       inputCurrency: Faker::Currency.code,
                       outputAmount: Faker::Number.decimal(l_digits: 2, r_digits: 2),
                       outputCurrency: Faker::Currency.code,
                       date: Faker::Date.between(from: Date.today - 1.year, to: Date.today)
                     })
end

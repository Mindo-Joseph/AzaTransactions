FactoryBot.define do
  factory :transaction do
    customerID {Faker::Number.number(digits: 4)}
    inputAmount {Faker::Number.decimal(l_digits: 2, r_digits: 2)}
    inputCurrency {Faker::Currency.code}
    outputAmount {Faker::Number.decimal(l_digits: 2, r_digits: 2)}
    outputCurrency {Faker::Currency.code}
    date {Faker::Date.between(from: Date.today - 1.year, to: Date.today)}
  end
end
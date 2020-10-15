# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

addresses = [
  { email:  'admin@qlan-inc.com', password: 'qlan2017', admin: true, },
  { email:  'accounts001@qlan-inc.com', password: 'qlan2017', admin:  false, },
  { email:  'accounts002@qlan-inc.com', password: 'qlan2017', admin:  false, },
  { email:  'accounts003@qlan-inc.com', password: 'qlan2017', admin:  false, },
  { email:  'accounts004@qlan-inc.com', password: 'qlan2017', admin:  false, },
  { email:  'accounts005@qlan-inc.com', password: 'qlan2017', admin:  false, },
]
addresses.each do |address|
  account = Account.find_by(email: address[:email])
  next if account.present?
  account = Account.new(email: address[:email], password: address[:password])
  AdminAccount.create!(account: account) if address[:admin]
  AccountsProfile.find_or_create_by!(
    account:               account,
    name:                  Faker::Name.name,
    self_introduction:     "self_introduction",
    image:                 "",
    connection_email:      Faker::Internet.email,
    sex:                   %w(男 女)[rand(0..1)],
    birthday:              Faker::Date.birthday(min_age: 18, max_age: 65),
  )
end
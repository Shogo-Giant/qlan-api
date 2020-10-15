FactoryBot.define do
  factory :accounts_profile do
    account { nil }
    self_introduction { "MyText" }
    image { "MyString" }
    connection_email { "MyString" }
    sex { 1 }
    birthday { "2020-10-06" }
  end
end

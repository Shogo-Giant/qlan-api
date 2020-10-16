FactoryBot.define do
  factory :accounts_reaction do
    to_account_id { 1 }
    from_account_id { 1 }
    to_account_favorited_at { "2020-10-16 08:44:51" }
    from_account_favorited_at { "2020-10-16 08:44:51" }
  end
end

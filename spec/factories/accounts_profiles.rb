# == Schema Information
#
# Table name: accounts_profiles
#
#  id                :bigint           not null, primary key
#  birthday          :date
#  connection_email  :string(255)
#  image             :string(255)
#  self_introduction :text(65535)
#  sex               :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  account_id        :bigint           not null
#
# Indexes
#
#  index_accounts_profiles_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#
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

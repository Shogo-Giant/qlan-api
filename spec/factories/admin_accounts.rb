# == Schema Information
#
# Table name: admin_accounts
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  slack_name :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :bigint           not null
#
# Indexes
#
#  index_admin_accounts_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#
FactoryBot.define do
  factory :admin_account do
    account { nil }
    name { "MyString" }
    slack_name { "MyString" }
  end
end

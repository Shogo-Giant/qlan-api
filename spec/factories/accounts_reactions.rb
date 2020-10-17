# == Schema Information
#
# Table name: accounts_reactions
#
#  id                        :bigint           not null, primary key
#  from_account_favorited_at :datetime
#  to_account_favorited_at   :datetime
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  from_account_id           :bigint
#  to_account_id             :bigint
#
# Indexes
#
#  index_accounts_reactions_on_from_account_id  (from_account_id)
#  index_accounts_reactions_on_to_account_id    (to_account_id)
#
# Foreign Keys
#
#  fk_rails_...  (from_account_id => accounts.id)
#  fk_rails_...  (to_account_id => accounts.id)
#
FactoryBot.define do
  factory :accounts_reaction do
    to_account_id { 1 }
    from_account_id { 1 }
    to_account_favorited_at { "2020-10-16 08:44:51" }
    from_account_favorited_at { "2020-10-16 08:44:51" }
  end
end

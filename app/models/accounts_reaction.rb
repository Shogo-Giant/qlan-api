class AccountsReaction < ApplicationRecord
  belongs_to :to_account, class_name: 'Accounts'
  belongs_to :from_account, class_name: 'Accounts'
end

class CreateAccountsReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts_reactions do |t|
      t.references :to_account, foreign_key: { to_table: :accounts } 
      t.references :from_account, foreign_key: { to_table: :accounts } 
      t.datetime :to_account_favorited_at, :default => nil
      t.datetime :from_account_favorited_at, :default => nil
      t.column   :created_at, CREATE_TIME_STAMP
      t.column   :updated_at, APDATE_TIME_STAMP
    end
  end
end

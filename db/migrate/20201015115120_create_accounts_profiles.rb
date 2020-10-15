class CreateAccountsProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts_profiles do |t|
      t.references :account, null: false, foreign_key: true
      t.text :self_introduction
      t.string :image
      t.string :connection_email
      t.integer :sex
      t.date :birthday
      t.column   :created_at, CREATE_TIME_STAMP
      t.column   :updated_at, APDATE_TIME_STAMP
    end
  end
end

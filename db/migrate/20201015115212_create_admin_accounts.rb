class CreateAdminAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_accounts do |t|
      t.references :account, null: false, foreign_key: true
      t.string :name
      t.string :slack_name
      t.column   :created_at, CREATE_TIME_STAMP
      t.column   :updated_at, APDATE_TIME_STAMP
    end
  end
end

class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name,           null: false
      t.integer :user_id
      t.integer :phone_number,  null: false
      t.string :email,          null: false
      t.string :password,       null: false

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :pesel, null: false
      t.string :uid
      t.string :access_token
      t.timestamps
    end
  end
end
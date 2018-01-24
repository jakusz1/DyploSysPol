class CreateManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :managers do |t|
      t.integer :department, null:false
      t.references :user, null:false
    end
  end
end

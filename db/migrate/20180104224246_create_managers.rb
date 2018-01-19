class CreateManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :managers do |t|
      t.integer :department, null:false
      t.references :user, null:false
      t.timestamps
    end
  end
end

class CreateTopics < ActiveRecord::Migration[5.1]
  
  def change
    create_table :topics do |t|
      t.datetime :declaration_date, null:false
      t.boolean :managers_allow, null:false, default:false
      t.boolean :repres_allow, null:false, default:false
      t.integer :attending_number, null:false
      t.string :title, null:false
      t.boolean :if_eng, null:false
      t.integer :studies_type, null:false
      t.references :teacher, null:false

      t.timestamps
    end
  end
end

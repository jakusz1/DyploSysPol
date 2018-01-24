class CreateTopics < ActiveRecord::Migration[5.1]
  
  def change
    create_table :topics do |t|
      t.datetime :declaration_date, null:true
      t.boolean :managers_allow
      t.boolean :repres_allow
      t.integer :attending_number, null:false
      t.string :title, null:false
      t.boolean :if_eng, default:false
      t.integer :studies_type, null:false
      t.references :teacher, null:false
    end
  end
end

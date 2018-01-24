class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :mark_type, null:false
      t.datetime :date, null:false
      t.text :summary, null:false
      t.references :teacher, null:false
      t.references :topic, null:false
    end
  end
end

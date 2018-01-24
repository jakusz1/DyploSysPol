class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :hours, null:false
      t.boolean :extra_hours_allow, null:false, default:false
      t.integer :degree_type, null:false
      t.references :user, null:false
      t.references :manager, null:false
    end
  end
end

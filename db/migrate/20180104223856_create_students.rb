class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :index, null:false
      t.integer :semester, null:false
      t.integer :studies_type, null:false
      t.references :user, null:false
    end
  end
end

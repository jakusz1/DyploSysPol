class CreateStudents < ActiveRecord::Migration[5.1]
  STATUS_OPTIONS = %w(yes no maybe)
  def change
    create_table :students do |t|
      t.integer :index, null:false
      t.integer :semester, null:false
      t.integer :studies_type, null:false
      t.references :user, null:false
      t.timestamps
    end
  end
end

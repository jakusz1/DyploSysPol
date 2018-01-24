class CreateRepresentatives < ActiveRecord::Migration[5.1]
  def change
    create_table :representatives do |t|
    	t.references :user, null:false
    end
  end
end

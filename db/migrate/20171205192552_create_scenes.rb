class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.string :name
      t.integer :user_id
      t.integer :gallery_id
    end
  end
end

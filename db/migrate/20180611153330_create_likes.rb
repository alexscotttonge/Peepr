class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :peep, foreign_key: true

      t.timestamps
    end

    add_index :likes, [:user_id, :peep_id], unique: true
  end
end

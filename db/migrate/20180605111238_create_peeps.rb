class CreatePeeps < ActiveRecord::Migration[5.1]
  def change
    create_table :peeps do |t|
      t.string :body, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

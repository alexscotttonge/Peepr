class CreateTextPeeps < ActiveRecord::Migration[5.1]
  def change
    create_table :text_peeps do |t|
      t.string :body, null: false

      t.timestamps
    end
  end
end

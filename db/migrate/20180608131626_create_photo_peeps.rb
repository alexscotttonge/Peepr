class CreatePhotoPeeps < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_peeps do |t|

      t.timestamps
    end
  end
end

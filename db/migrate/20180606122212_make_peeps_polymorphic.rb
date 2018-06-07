class MakePeepsPolymorphic < ActiveRecord::Migration[5.1]

  class Peep < ApplicationRecord
    belongs_to :content, polymorphic: true
  end

  class TextPeep < ApplicationRecord; end

  def change
    change_table(:peeps) do |t|
      t.string :content_type
      t.integer :content_id
      t.index [:content_type, :content_id]
    end

    reversible do |dir|
      Peep.reset_column_information
      Peep.find_each do |peep|
        dir.up do
          text_peep = TextPeep.create(body: peep.body)
          peep.update(content_id: text_peep.id, content_type: "TextPeep")
        end
        dir.down do
          peep.update(body: peep.content.body)
          peep.content.destroy
        end
      end
    end

    remove_column :peeps, :body, :string
  end
end

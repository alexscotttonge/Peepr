class AddNullFalseToPeeps < ActiveRecord::Migration[5.1]
  def change
    change_column_null :peeps, :user_id, false
    change_column_null :peeps, :content_type, false
    change_column_null :peeps, :content_id, false
  end
end

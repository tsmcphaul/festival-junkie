class AddUserIdToFestivals < ActiveRecord::Migration[6.1]
  def change
    add_column :festivals, :user_id, :integer
  end
end

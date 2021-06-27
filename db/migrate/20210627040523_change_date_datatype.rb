class ChangeDateDatatype < ActiveRecord::Migration[6.1]
  def change
    change_column :festivals, :date, :string 
  end
end

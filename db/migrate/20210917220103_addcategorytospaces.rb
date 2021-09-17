class Addcategorytospaces < ActiveRecord::Migration[6.1]
  def change
     add_column :spaces, :category, :string
  end
end

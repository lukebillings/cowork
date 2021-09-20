class Removetypefromspaces < ActiveRecord::Migration[6.1]
  def change
    remove_column :spaces, :type, :string
  end
end

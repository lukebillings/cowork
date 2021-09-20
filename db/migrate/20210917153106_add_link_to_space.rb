class AddLinkToSpace < ActiveRecord::Migration[6.1]
  def change
    add_column :spaces, :link, :string
  end
end

class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :type
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end

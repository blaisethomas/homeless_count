class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.text :category
      t.references :user, index: true

      t.timestamps
    end
  end
end

class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :adults
      t.integer :under18male
      t.integer :under18female
      t.integer :under18genderunknown
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end

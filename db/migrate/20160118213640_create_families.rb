class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :adults
      t.string :under18male
      t.string :under18female
      t.string :under18genderunknown
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end

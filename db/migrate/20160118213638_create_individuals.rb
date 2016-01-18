class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :category
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end

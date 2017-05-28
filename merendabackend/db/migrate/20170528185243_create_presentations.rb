class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :name
      t.text :description
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end

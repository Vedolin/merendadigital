class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :name
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end

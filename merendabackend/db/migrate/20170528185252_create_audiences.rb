class CreateAudiences < ActiveRecord::Migration[5.1]
  def change
    create_table :audiences do |t|
      t.string :name
      t.integer :min_age
      t.integer :max_age
      t.references :meal, foreign_key: true
      t.references :ue, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCitizenRates < ActiveRecord::Migration[5.1]
  def change
    create_table :citizen_rates do |t|
      t.integer :stars
      t.text :comment
      t.references :ue, foreign_key: true

      t.timestamps
    end
  end
end

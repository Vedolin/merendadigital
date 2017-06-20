class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :address
      t.references :execution, foreign_key: true
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end

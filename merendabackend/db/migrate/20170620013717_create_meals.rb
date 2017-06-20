class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.text :planned
      t.text :served
      t.date :scheduled_to
      t.belongs_to :age, foreign_key: true
      t.belongs_to :kind, foreign_key: true
      t.belongs_to :school, foreign_key: true

      t.timestamps
    end
  end
end

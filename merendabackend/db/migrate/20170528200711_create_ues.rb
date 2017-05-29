class CreateUes < ActiveRecord::Migration[5.1]
  def change
    create_table :ues do |t|
      t.string :name

      t.timestamps
    end
  end
end

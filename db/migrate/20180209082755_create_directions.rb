class CreateDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :directions do |t|
      t.string :name
      t.belongs_to :ingredient, foreign_key: true

      t.timestamps
    end
  end
end

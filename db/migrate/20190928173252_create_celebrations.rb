class CreateCelebrations < ActiveRecord::Migration[6.0]
  def change
    create_table :celebrations do |t|
      t.string :image
      t.string :name
      t.text :description
      t.date :date
      t.string :ubication

      t.timestamps
    end
  end
end

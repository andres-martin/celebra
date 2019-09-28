class CreateJoinTableUsersCelebrations < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :celebrations do |t|
      # t.index [:user_id, :celebration_id]
      # t.index [:celebration_id, :user_id]
    end
  end
end

class CreateAtBats < ActiveRecord::Migration[5.0]
  def change
    create_table :at_bats do |t|
      t.integer :pitcher, null: false, default: 0
      t.integer :position, null: false, default: 0
      t.integer :result, null: false
      t.integer :rbi, null: false, default: 0
      t.integer :game_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
